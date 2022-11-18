from InquirerPy.validator import PathValidator
from InquirerPy import inquirer
from InquirerPy.base.control import Choice
import os, sys
from pyfiglet import Figlet
import glob
import pandas as pd
from datetime import datetime

f = Figlet(font='slant')
print(f"""
----------------------------------------------------------
{f.renderText('combinator')}
ADEPT ML © TU Dortmund
----------------------------------------------------------
""")


def main():
    directoryLocation = inquirer.select(
        message="Where do you want to choose files from?",
        choices=[
            Choice(value=0, name="ADEPTs standard data directory", enabled=True),
            Choice(value=1, name="A custom directory"),
            Choice(value=None, name="Exit"),
        ],
        default=0,
    ).execute()
    
    match directoryLocation:
        case 0:
            os.getcwd()
            os.chdir(r"../data")
            data_directory = os.getcwd()
        case 1:
            data_directory = inquirer.filepath(
                message="Please enter a path:",
                default=os.getcwd(),
                validate=PathValidator(
                    is_dir=True, message="Input is not a directory"),
                only_directories=True,
            ).execute()
        case _:
            print("cancelled")
            return
    
    available_data = []
    
    for root, dirs, files in os.walk(data_directory):
        for file in files:
            basename = os.path.basename(file)
            file_name, file_ext = basename.rsplit(".", 1)
            if file_ext == "xls":
                available_data.append(os.path.join(root, file))
       
    if len(available_data) <= 1:
        print("ERROR the directory was empty or contained only one file")
        return
    
    selected = inquirer.checkbox(
        message="Please pick the two buildings to be combined:",
        choices=available_data,
        validate=lambda result: len(result) >= 2,
        invalid_message="should be exactly 2 selected",
        instruction="(select exactly 2 using 'space' on your keyboard)",
    ).execute()
    
    dfs = []
    
    # load dataframes
    for building_path in selected:
        df_raw = pd.DataFrame()
        df_raw = pd.read_excel(building_path, index_col=0, parse_dates=True)
        # rename columns to unique value based on OBIS
        df_raw.columns = df_raw.columns.map(lambda x: df_raw[x][1] + "_" + df_raw[x][2] + "_" + str(x).split('.')[0])
        df_raw = df_raw.iloc[5:]
        df_raw.index.names = ['Date']
        dfs.append(df_raw)
    
    # combine/append/concat on index and common columns
    df_new = dfs[0].combine_first(dfs[1])

    new_file_name = f"{os.path.basename(selected[0]).rsplit('.', 1)[0]}_comb.xls"
    df_new.to_excel(new_file_name)
    print(
        f"Succesfully combined the two files and exported to '{data_directory}/{new_file_name}'")

if __name__ == "__main__":
    main()
