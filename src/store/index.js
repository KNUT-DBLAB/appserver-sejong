import { createStore } from "vuex";
import { login } from "@/store/modules/login";
import { test } from "@/store/modules/test";
import { signup } from "@/store/modules/signup";
import axios from "axios"

export default createStore({
  modules: { 
    signup: signup,
    login: login,
    test: test,
  },
  state: {
    existEmail: true,
    kindOfFarm: null,
    user :{
        name: null,
        email: null,
        passwd: null,
        phonenum: null,
    }
  },
  mutations: {
      KIND_OF_FARM: (state, payload) => {
        console.log(payload);
        state.kindOfFarm = payload
      },
      FARM_INFO: (state, payload) => {
        console.log(payload);
        state.user = payload
      },
      EXIST_EMAIL: (state, existEmail) => {
        state.existEmail = existEmail
        console.log(state.existEmai);
      }
  },
  actions: {
      existEmail: ({commit}, email) => {
          console.log(email);
          axios.get('http://localhost:8080/api/existEmail', {params: { email: email} })
          .then(res => {
            console.log(res);
            commit('EXIST_EMAIL', res.data == 1)
            if ( res.data == 1){
              alert("이미 존재하는 아이디입니다!")
            } else { 
              alert("사용 가능한 아이디입니다!")
            }
          })
          .catch(err => {
          console.log(err);
        });
      },
  }
});

