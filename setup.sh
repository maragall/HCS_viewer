#!/bin/bash

# Setup script for HCS Viewer
echo "Setting up HCS Viewer environment..."

# Create conda environment
echo "Creating conda environment 'hcs'..."
conda create -n hcs python=3.9 -y

# Activate environment
echo "Activating environment..."
source $(conda info --base)/etc/profile.d/conda.sh
conda activate hcs

# Install dependencies
echo "Installing dependencies..."
pip install -r requirements.txt

# Make run script executable
chmod +x run_grid_viewer.py

echo "Setup complete! To run HCS Viewer:"
echo "  conda activate hcs"
echo "  python run_grid_viewer.py" 