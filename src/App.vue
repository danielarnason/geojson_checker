<template>
  <div id="app">
    <div class="cell cell-map">
      <MapContainer :geojson="this.geojson"/>
    </div>
    <div class="cell cell-json">
      <GeojsonEditor :geojson="this.geojson"/>
    </div>
  </div>
</template>

<script>
import MapContainer from './components/MapContainer.vue'
import GeojsonEditor from './components/GeojsonEditor.vue'

export default {
  name: 'App',
  components: {
    MapContainer,
    GeojsonEditor
  },
  data () {
    return {
      geojson: {
        "type": "FeatureCollection",
        "features": [
          {
            "type": "Feature",
            "properties": {},
            "geometry": {
              "type": "Polygon",
              "coordinates": [
                [
                  [
                    -26.982421875,
                    66.26685631430843
                  ],
                  [
                    -23.291015625,
                    62.3903694381427
                  ],
                  [
                    -11.25,
                    63.11463763252091
                  ],
                  [
                    -11.513671874999998,
                    67.30597574414466
                  ],
                  [
                    -26.982421875,
                    66.26685631430843
                  ]
                ]
              ]
            }
          }
        ]
      }
    }
  }
}
</script>

<style>
html, body {
  height: 100%;
  margin: 0;
}

#app {
  height: 100%;
  display: grid;
  grid-template-rows: repeat(2, 1fr);
  grid-template-columns: repeat(3, 1fr );
  grid-template-areas: 
    "map map json"
    "map map json";
  gap: 1rem;
  padding: 1rem;
  box-sizing: border-box;
}

.cell {
  background-color: lightgrey;
  border-radius: 5px;
}

.cell-map {
  grid-area: map;
}

.cell-json {
  grid-area: json;
}
</style>
