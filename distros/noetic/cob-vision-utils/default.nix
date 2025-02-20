
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, roscpp, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-cob-vision-utils";
  version = "0.6.18-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_perception_common-release/archive/release/noetic/cob_vision_utils/0.6.18-1.tar.gz";
    name = "0.6.18-1.tar.gz";
    sha256 = "de18b314f11dc4cdd3d182874f242139503d834a0067fb8f7bebad47604dd3f9";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cv-bridge roscpp visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Contains utilities used within the object detection tool chain.'';
    license = with lib.licenses; [ asl20 ];
  };
}
