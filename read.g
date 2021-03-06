#
# GaussPar: Parallel gaussian algorithm for finite fields
#
# Reading the implementation part of the package.
#

# The gauss pkg doesn't work under old versions of HPCGAP. But we can take
# the functions we need from the following files we copied.
gauss := LoadPackage("GAUSS");
if gauss = fail then
    ReadPackage( "GaussPar", "gap/hpc/gauss-upwards.gd");
    ReadPackage( "GaussPar", "gap/hpc/gauss-upwards.gi");
fi;
LoadPackage("IO");

if not IsHPCGAP then
    ReadPackage( "GaussPar", "gap/overload-hpcgap-functions-in-gap.g");
fi;

ReadPackage( "GaussPar", "gap/utils.g");
ReadPackage( "GaussPar", "gap/subprograms.g");
ReadPackage( "GaussPar", "gap/dependencies.g");

ReadPackage( "GaussPar", "gap/main.g");
ReadPackage( "GaussPar", "gap/main.gi");
ReadPackage( "GaussPar", "gap/timing.g");
ReadPackage( "GaussPar", "gap/echelon_form.g");

if IsHPCGAP then
    ReadPackage( "GaussPar", "gap/measure_contention.g");
    ReadPackage( "GaussPar", "gap/stats/timing.g");
fi;

Info(InfoGauss, 1, "<< The package \"GaussPar\" is still in alpha stage! >>");
Info(InfoGauss, 1, "<< See the README.md for some usage examples.      >>");
