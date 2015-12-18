
        app.service('AuthService',function($http){
            this.User = null;
            this.login = function(credentials){
                return $http.post('/users/authadmin', credentials);
            };
            this.checkAuth = function(){
                return $http.get('/users/checkauth');
            };
            return this;
        });