<template>

    <div>
        <header class="welcome-header1">
            <h1 class="welcome-header__title1">따 과 농 과</h1>
            <p class="welcome-header__text1">{{this.$store.state.test.id}}</p>
        </header>
        <!-- @ 는 v-on 과 같은 표현식이다. 폼 내부에서 버튼을 누르면 submit 이벤트가 form 으로 전송되고 v-on:submit이 실행된다.
		이때 페이지가 새로고침되므로 .prevent를 통해 새로고침을 막고 methods의 함수롤 호출하게 한다. -->
        <!-- <form @submit.prevent="submitForm" class="login-form">

			<div>
				<input class="login-form__input" type="text" id="name" v-model="email" />
			</div>
			<div>
				<input class="login-form__input" type="password" id="password" v-model="password" />
			</div> -->

        <v-form ref="form" v-model="valid" lazy-validation @submit.prevent="submitForm">
            <v-text-field v-model="email" :rules="emailRules" label="E-mail" required ></v-text-field>

            <!-- <v-text-field v-model="password" :rules="passwordRules" label="Password" type="password" required>
            </v-text-field> -->

            <v-text-field v-model="password" :append-icon="show1 ? 'mdi-eye' : 'mdi-eye-off'"
                :rules="[rules.required, rules.min]" :type="show1 ? 'text' : 'password'" name="input-10-1"
                label="Password" hint="비밀번호는 최소 6글자 입니다" counter @click:append="show1 = !show1"></v-text-field>

            <div class="login_keep_wrap" id="login_keep_wrap">
                <div class="keep_check">
                    <input type="checkbox" id="keep" name="nvlong" class="input_keep" value="on">
                    <label for="keep" class="keep_text">로그인 상태 유지</label>
                    <br>
                    <br>
                    <input type="radio" id="consumer" value="consumer" v-model="checkUser">
                    <label for="consumer">소비자</label>
                    <br>
                    <input type="radio" id="farm" value="farm" v-model="checkUser">
                    <label for="farm">농가</label>
                    <br>
                </div>
            </div>
            <button class="login-form__btn" type="submit" @click="login()">로그인</button>

            <router-link to='/clause'>
                <button class="login-form__btn" type="submit">회원가입</button>
            </router-link>
            <!-- <a class="login-form__a" href="#">아이디 찾기</a> -->
        </v-form>
    </div>
</template>

<script>

import axios from "axios"

export default {
    // name: 'SignupForm',
    data() {
        return {
            valid: false,
            checkUser: 'consumer',
            email: null,
            password: null,
            token: null,
            show1: false,
            show2: true,
            // show3: false,
            // show4: false,
            emailRules: [
                v => !!v || 'E-mail을 입력해주세요.',
                v => /.+@.+/.test(v) || '유효하지 않은 형식의 E-mail 입니다.',
            ],
            // passwordRules: [
            //     v => !!v || 'password is required',
            //     v => v.length <= 6 || 'password must be less than 6 characters',
            // ],
            rules: {
                required: value => !!value || '비밀번호를 입력해주세요.',
                min: v => v.length >= 6 || '비밀번호는 최소 6글자 입니다',
                emailMatch: () => (`The email and password you entered don't match`),
            },  
        };
    },
    methods: {
        login() {
            axios.post('http://localhost:8080/api/login',  { email: this.email, checkUser: this.checkUser, password: this.password})
            .then(res => {
                console.log(res);
                if (res.data == "") {
                    alert("아이디 또는 비밀번호가 틀렸습니다!")
                    console.log("....");
                } else if (res.data.consumer_id == 0){
					alert("중복 로그인입니다! 다시 한번 로그인 해주세요!")
					console.log("중복 로그인!");
				} else {
					// main으로 넘기기
					console.log(res.data);

					this.$store.commit('TOKEN_SAVE', res.data.token);
					console.log(this.$store.state.config.headers.TOKEN);
					this.$router.push({name: 'main'});
				}
            })
            .catch(err => {
                console.log(err);
            });
        }
    },
}
</script>

<style>


    /* 
	https://github.com/vuetifyjs/vuetify/blob/next/packages/docs/src/examples/v-form/usage.vue 
	https://minu0807.tistory.com/82 아이디 유효성체크
	*/
</style>