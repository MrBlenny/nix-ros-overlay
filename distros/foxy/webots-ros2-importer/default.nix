
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, builtin-interfaces, python3Packages, pythonPackages, xacro }:
buildRosPackage {
  pname = "ros-foxy-webots-ros2-importer";
  version = "1.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/webots_ros2-release/archive/release/foxy/webots_ros2_importer/1.2.2-1.tar.gz";
    name = "1.2.2-1.tar.gz";
    sha256 = "0da12271f80a84606bbaef0511d6018f3e3f33ba7b9b8aa972ba62496974efcd";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.numpy python3Packages.pillow python3Packages.pycodestyle pythonPackages.pytest ];
  propagatedBuildInputs = [ builtin-interfaces python3Packages.lark python3Packages.pycollada xacro ];

  meta = {
    description = ''This package allows to convert URDF and XACRO files into Webots PROTO files.'';
    license = with lib.licenses; [ asl20 ];
  };
}
