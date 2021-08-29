<template>
  <textarea name="geojson" id="geojson" v-model="this.geojsonStr"></textarea>
</template>

<script>
export default {
    name: 'GeojsonEditor',
    props: [
        'geojson'
    ],
    computed: {
        geojsonStr () {
            return JSON.stringify(this.geojson, null, ' ');
        }
    }
}
</script>

<style>
#geojson {
    width: 100%;
    height: 100%;
    overflow: hidden;
    resize: none;
}
</style>