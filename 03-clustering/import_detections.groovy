
def gson = GsonTools.getInstance(true)

//def json = new File('Z:/codex/pillaiv/SCTC-VP-15/code/forQuPath/detections_for_qupath.geojson').text 
def json = new File('Z:/merscope/MERSCOPE_NB_3472_R2/03-clustering/m200_detections_for_qupath_flip_t.geojson').text 

// Read the annotations
def type = new com.google.gson.reflect.TypeToken<List<qupath.lib.objects.PathObject>>() {}.getType()
def deserializedAnnotations = gson.fromJson(json, type)

addObjects(deserializedAnnotations)   
