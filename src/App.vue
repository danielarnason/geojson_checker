<template>
  <div id="app">
    <div class="cell cell-map">
      <MapContainer :geojson="this.geojson"/>
    </div>
    <div class="cell cell-json">
      <GeojsonEditor :geojson="this.geojson" v-on:change="geojson = $event"/>
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
        "features": []
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
