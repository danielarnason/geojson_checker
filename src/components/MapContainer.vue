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
            geoJSONLyr: null
        }
    },
    props: {
        geojson: Object
    },
    mounted: function () {
        let ref = this;
        
        ref.map = L.map('mapcontainer', {
            center: [56.2, 9.5],
            zoom: 4,
            layers: [
                L.tileLayer('http://{s}.tile.osm.org/{z}/{x}/{y}.png', {
                    attribution: '&copy; <a href="http://osm.org/copyright">OpenStreetMap</a> contributors'
              })
            ]
        })
    },
    watch: {
        geojson: function (value) {
            if (this.geoJSONLyr === null) {
                this.geoJSONLyr = L.geoJSON(value)
                this.geoJSONLyr.addTo(this.map);
            } else {
                this.geoJSONLyr.remove()
                this.geoJSONLyr = L.geoJSON(value)
                this.geoJSONLyr.addTo(this.map);
            }
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