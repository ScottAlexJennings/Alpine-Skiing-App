import json
import gpxpy
import gpxpy.gpx

def geojson_to_gpx(input_file, output_file):
    # Read GeoJSON file
    with open(input_file, 'r') as f:
        geojson_data = json.load(f)

    # Extract coordinates
    coordinates = geojson_data['geometry']['coordinates']

    # Create GPX object
    gpx = gpxpy.gpx.GPX()

    # Create GPX track
    gpx_track = gpxpy.gpx.GPXTrack()
    gpx.tracks.append(gpx_track)

    # Create GPX segment
    gpx_segment = gpxpy.gpx.GPXTrackSegment()
    gpx_track.segments.append(gpx_segment)

    # Convert coordinates to GPX points
    for coord in coordinates:
        longitude, latitude, elevation = coord
        gpx_segment.points.append(gpxpy.gpx.GPXTrackPoint(latitude=latitude, longitude=longitude, elevation=elevation))

    # Write GPX data to file
    with open(output_file, 'w') as f:
        f.write(gpx.to_xml())

# Example usage
geojson_to_gpx('HaglebuMainSlope.geojson', 'test.gpx')
