MAP
  NAME Thai
  STATUS ON
  EXTENT 97.0 5.5 105.7 20.5
  UNITS dd
  SIZE 600 400
  IMAGECOLOR 180 180 180
  TRANSPARENT ON
  IMAGETYPE png
  FONTSET "/ms601/fonts/fonts.txt"
  #SYMBOLSET "/ms601/symbols/symbols.txt"
  OUTPUTFORMAT
    NAME png
    DRIVER "GD/PNG"
    MIMETYPE "image/png"
    IMAGEMODE RGB
    EXTENSION "png"
    FORMATOPTION "INTERLACE=OFF"
  END
  WEB
    IMAGEPATH '/wms/tmp/'
    IMAGEURL "/wms/tmp/"
    METADATA
      "wms_title" "DSI WMS"
      "wms_onlineresource" "http://192.168.1.40/cgi-bin/mapserv?map=/ms601/map/hili.map&"
      "wms_srs" "EPSG:4326 EPSG:900913"
    END
  END
  PROJECTION
    "proj=latlong"
    "datum=WGS84"
  END

  LAYER
    NAME "hili"
    METADATA
      "wms_title" "Highlight Province"
      "wms_srs" "EPSG:4326 EPSG:900913"
    END
    PROJECTION
      "proj=latlong"
      "datum=WGS84"
    END
    STATUS ON
    OPACITY 50
    TYPE POLYGON
    CONNECTIONTYPE postgis
    CONNECTION "host=localhost dbname=dsi user=postgres"
    DATA "the_geom FROM province using unique gid using srid=4326"
    FILTER "XX"
    LABELITEM "prov_nam_t"
    CLASS
      STYLE
        ANGLE 360
        COLOR  255 99 71
        OUTLINECOLOR 255 0 0
        WIDTH 5
      END
      LABEL
        TYPE truetype
        FONT tahoma
        SIZE 50
        POSITION cc
        MINDISTANCE 100000
        ENCODING tis-620
      END
    END
  END
END

 
