
<template>

	<div>
    <header class="welcome-header">
        <h1 class="welcome-header__title">정 보 입 력</h1>
      </header>
		<!-- @ 는 v-on 과 같은 표현식이다. 폼 내부에서 버튼을 누르면 submit 이벤트가 form 으로 전송되고 v-on:submit이 실행된다.
		이때 페이지가 새로고침되므로 .prevent를 통해 새로고침을 막고 methods의 함수롤 호출하게 한다. -->
		<form @submit.prevent="submitBizForm" class="login-form">
        <label id="login-form-label">농가명</label>
        <input v-model="f_farm_name" class="information-form__input" type="text" required placeholder="농가명">

        <label id="login-form-label">대표자</label>
        <input v-model="f_representative" class="information-form__input" type="text" required placeholder="대표자">

        <label id="login-form-label">주민등록번호</label>
        <input v-model="f_RRN" class="login-form__input" type="text" required placeholder="주민등록번호">

        <label id="login-form-label">사업장 소재지</label>
        <input v-model="f_location" class="login-form__input" type="text" required placeholder="사업장 소재지">

        <label id="login-form-label">농가 전화번호</label>
        <input v-model="f_num" class="login-form__input" type="text" required placeholder="농가 전화번호">

        <input class="login-form__btn" type="submit" @click="submitFuserSignUp({f_farm_name, f_representative, f_RRN, f_location, f_num})" value="다음">
		</form>
	</div>
</template>

<script>
import axios from "axios"

export default {
	name: 'submitBizForm',
	data() {
		return {
			f_farm_name: null,
			f_representative: null,
			f_RRN: null,
			f_location: null,
			f_num: null
		};
	},
	methods:{
		submitFuserSignUp(FuserSignUp) {
			console.log(FuserSignUp);
			axios.post('http://localhost:8080/api/signupFarmMember', FuserSignUp)
			.then(res => {
				console.log(res);
			})
			.catch(err => {
				console.log(err);
			});
		}
	}
};



</script>

<style>

</style>