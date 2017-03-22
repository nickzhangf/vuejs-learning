<div id="app">
    {{ message }}
</div>

<div id="app2">
    <span v-bind:title="message">
        鼠标悬停几秒钟查看此处动态绑定的提示信息！
    </span>
</div>

<div id="app3">
    <p v-if="seen">现在你看到我了</p>
</div>

<div id="app4">
    <ol>
        <li v-for="todo in todos">
            {{ todo.text }}
        </li>
    </ol>
</div>

<div id="app5">
    <p>{{ message }}</p>
    <button v-on:click="reverseMessage">逆转消息</button>
</div>

<div id="app6">
    <p>{{ message }}</p>
    <input v-model="message">
</div>

<div id="app7">
    <ol>
        <todo-item v-for="item in list" v-bind:todo="item"></todo-item>
    </ol>
</div>

<script src="/js/vue.js"></script>
<script>
    var app = new Vue({
        el: '#app',
        data: {
            message: 'Hello Vue!'
        }
    });

    var app2 = new Vue({
        el: '#app2',
        data: {
            message: '页面加载于 ' + new Date()
        }
    });

    var app3 = new Vue({
        el: '#app3',
        data: {
            seen: true
        }
    });

    var app4 = new Vue({
        el: '#app4',
        data: {
            todos: [
                { text: 'java'},
                { text: 'c++'},
                { text: 'python'},
                { text: 'javacript'}
            ]
        }
    });

    var app5 = new Vue({
        el: '#app5',
        data: {
            message: "Hello vue.js!"
        },
        methods: {
            reverseMessage: function () {
                this.message = this.message.split('').reverse().join('')
            }
        }
    });

    var app6 = new Vue({
        el: '#app6',
        data: {
            message: 'hello vue!'
        }
    });

    Vue.component('todo-item', {
        props: ['todo'],
        template: '<li>{{ todo.text }}</li>'
    })

    var app7 = new Vue({
        el: '#app7',
        data: {
            list: [
                { text: 'java'},
                { text: 'c++'},
                { text: 'python'},
                { text: 'javacript'}
            ]
        }
    });
</script>