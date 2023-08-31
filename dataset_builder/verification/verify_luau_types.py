import datasets
import argparse

parser = argparse.ArgumentParser(description='Verify luau types of a prompt dataset')
parser.add_argument('dataset', type=str, help='Path to the dataset')
args = parser.parse_args()

