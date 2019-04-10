
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslib, catkin, roscpp }:
buildRosPackage {
  pname = "ros-melodic-timestamp-tools";
  version = "1.6.8";

  src = fetchurl {
    url = https://github.com/ros-gbp/driver_common-release/archive/release/melodic/timestamp_tools/1.6.8-0.tar.gz;
    sha256 = "dabb75248bb8528c603d556f7533df6bf701870db84b5d5c5983e2d7f08464b0";
  };

  buildInputs = [ roslib roscpp ];
  propagatedBuildInputs = [ roslib roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package is currently for internal use only. Its API may change
    without warning in the future.  This package is deprecated.'';
    #license = lib.licenses.BSD;
  };
}
