<template>
  <div id="app">
    <div class="cell cell-map"><MapContainer/></div>
    <div class="cell cell-json"></div>
  </div>
</template>

<script>
import MapContainer from './components/MapContainer.vue'
export default {
  name: 'App',
  components: {
    MapContainer
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
