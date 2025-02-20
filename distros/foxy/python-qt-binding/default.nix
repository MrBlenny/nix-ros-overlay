
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-lint-auto, ament-lint-common, python3Packages, qt5 }:
buildRosPackage {
  pname = "ros-foxy-python-qt-binding";
  version = "1.0.6-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/python_qt_binding-release/archive/release/foxy/python_qt_binding/1.0.6-2.tar.gz";
    name = "1.0.6-2.tar.gz";
    sha256 = "677afe0d5db221190285bf5a62827ce95442d3d2b2bdbeb296c3bd512748feab";
  };

  buildType = "ament_cmake";
  buildInputs = [ qt5.qtbase ];
  checkInputs = [ ament-cmake-pytest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ python3Packages.pyqt5 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''This stack provides Python bindings for Qt.
    There are two providers: pyside and pyqt.  PySide2 is available under
    the GPL, LGPL and a commercial license.  PyQt is released under the GPL.

    Both the bindings and tools to build bindings are included from each
    available provider.  For PySide, it is called &quot;Shiboken&quot;.  For PyQt,
    this is called &quot;SIP&quot;.

    Also provided is adapter code to make the user's Python code
    independent of which binding provider was actually used which makes
    it very easy to switch between these.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
