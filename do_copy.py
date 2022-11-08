import sys, os, shutil
import pathlib

def copy_verilog(src):
    # TODO: add spdx header?
    shutil.copy(src, "./verilog/rtl")

def main():
    fab_root = f"{os.environ['HOME']}/FABulous_gf180"
    build_dir = f"{os.environ['HOME']}/test/build/gf180"

    fab_verilog = ["bitbang.v", "Config.v", "config_UART.v", "ConfigFSM.v", "fabric.v",
        "eFPGA_top.v", "Frame_Data_Reg_Pack.v", "Frame_Select_Pack.v", "models_pack.v"]

    for v in fab_verilog:
        copy_verilog(f"{fab_root}/fabric_generator/verilog_output/{v}")
    copy_verilog(f"{fab_root}/fabric_generator/fabulous_top_wrapper_temp/wrapper_gf180.v")

    pathlib.Path("openlane/user_project_wrapper/macros/lef").mkdir(parents=True, exist_ok=True)
    pathlib.Path("openlane/user_project_wrapper/macros/gds").mkdir(parents=True, exist_ok=True)
    pathlib.Path("openlane/user_project_wrapper/macros/verilog").mkdir(parents=True, exist_ok=True)

    for tile in os.listdir(build_dir):
        if not os.path.isdir(f"{build_dir}/{tile}"):
            continue
        shutil.copy(f"{build_dir}/{tile}/runs/build_tile/results/final/lef/{tile}.lef", "openlane/user_project_wrapper/macros/lef")
        shutil.copy(f"{build_dir}/{tile}/runs/build_tile/results/final/gds/{tile}.gds", "openlane/user_project_wrapper/macros/gds")
        shutil.copy(f"{build_dir}/{tile}/src/{tile}_tile.v", "openlane/user_project_wrapper/macros/verilog")

if __name__ == '__main__':
    main()
