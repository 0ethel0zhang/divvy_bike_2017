# If only single request
# import requests
# url = "https://s3.amazonaws.com/divvy-data/tripdata/Divvy_Trips_2017_Q1Q2.zip"
# filename = 'data/raw/Divvy_Trips_2017_Q1Q2.zip'
# with open(filename, 'wb') as ofile:
#     response = requests.get(url)
#     ofile.write(response.content)

import requests
import click

@click.command()
@click.argument('url')
@click.argument('filename', type=click.Path())

def download_file(url, filename):

    print('Downloading from {} to {}'.format(url, filename))
    response = requests.get(url)

    with open(filename, 'wb') as ofile:
        ofile.write(response.content)

if __name__ == '__main__':
    download_file()
