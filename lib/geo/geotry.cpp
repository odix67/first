#include<GeographicLib/Geodesic.hpp>

extern "C" double distance(double lon1, double lat1, double lon2, double lat2);

double distance(double lon1, double lat1, double lon2, double lat2) {
  GeographicLib::Math::real
    a = GeographicLib::Constants::WGS84_a<GeographicLib::Math::real>(),
    f = GeographicLib::Constants::WGS84_f<GeographicLib::Math::real>();

  const GeographicLib::Geodesic geod(a, f);
  GeographicLib::Math::real s12, a12;

  a12 = geod.Inverse(lat1, lon1, lat2, lon2, s12);
  return a12;
}
