defmodule Geo.ZigTwo do
  use Zig,
    link_libcpp: true,
    system_libs: ["GeographicLib"],
    sources: [
      "geotry.cpp"
    ]

  ~Z"""
    const geo = @cImport({
      @cInclude("geotry.h");
    });

    /// nif: distance/4
    fn distance(lon1: f64, lat1: f64, lon2: f64, lat2: f64) f64 {
      return geo.distance(lon1, lat1, lon2, lat2);
    }
  """
end
