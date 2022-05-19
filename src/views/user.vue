<template>
    <div>
        <h1>Users</h1>
        유저번호{{ userId }}

    </div>
</template>

<script>
export default {
    computed: {
        userId() {
            return this.$route.params.userId
        }
    },
    created() {
        console.log("router", this.$router);
        console.log("router", this.$route);
    }
}
</script>

<style>

</style>