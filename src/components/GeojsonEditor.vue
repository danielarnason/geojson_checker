<template>
  <textarea name="geojson" id="geojson" v-model="geojsonStr"></textarea>
</template>

<script>
export default {
    name: 'GeojsonEditor',
    props: {
        geojson: Object
    },
    computed: {
        geojsonStr: {
            get: function () {
                return JSON.stringify(this.geojson, null, ' ');
            },
            set: function (value) {
                this.$emit('change', JSON.parse(value));
            }
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