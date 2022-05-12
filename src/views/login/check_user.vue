
<template>
	<div>
    <header class="welcome-header1">
        <h1 class="welcome-header__title1">사용자 확인</h1>
        <p class="welcome-header__text1">회원님의 유형을 선택해주세요</p>
    </header>

    <ul class="check button1">
    <ul class="check button1">
        
        <li><button type="button" class="fpmgBt1" ><router-link :to="{ path: '/signup' }">소비자 회원</router-link></button></li>
        <li><button type="button" class="fpmgBt2" ><router-link :to="{ path: '/check_farm' }">농가 회원</router-link></button></li>
    </ul>
    </ul>
	</div>


</template>


<script>
</script>


	
<style>
</style>