<template>
  <div id="mapcontainer"></div>
</template>

<script>
import "leaflet/dist/leaflet.css"
import L from 'leaflet'

export default {
    name: 'MapContainer',
    data () {
        return {
            map: null,
        }
    },
    props: {
        geojson: Object
    },
    mounted: function () {
        let ref = this;

        let geojsonLyr = L.geoJSON(ref.geojson);
        
        ref.map = L.map('mapcontainer', {
            center: [56.2, 9.5],
            zoom: 4,
            layers: [
                L.tileLayer('http://{s}.tile.osm.org/{z}/{x}/{y}.png', {
                    attribution: '&copy; <a href="http://osm.org/copyright">OpenStreetMap</a> contributors'
              }),
              geojsonLyr
            ]
        })
    },
    watch: {
        geojson: function (value) {
            L.geoJSON(value).addTo(this.map);
        }
    }
}
</script>

<style>
#mapcontainer {
    height: 100%;
    width: 100%;
    border-radius: 5px;
    
}
</style>