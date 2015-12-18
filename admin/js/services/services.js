app.service('Products',function($http){
    this.items = 0;
    this.GetProducts = function(){
       return $http.get('api/products');
    };
    this.GetProductById = function(id){
       return $http.get('api/products/'+id);
    };
    this.UpdateProduct = function(data){
       return $http.put('api/products/'+data.id, data);
    };
    this.CreateProduct = function (data){
        return $http.post('api/products/', data);
    };
    this.DeleteProduct = function (id){
        return $http.delete('api/products/'+id);
    };
        });
app.service('Categories',function ($http){
    this.GetCategories = function(){
        return $http.get('api/categories');
     };
    this.GetCategoryById = function(id){
        return $http.get('api/categories/'+id);
    };
    this.UpdateCategory = function(data){
       return $http.put('api/categories/'+data.id, data);
    };
    this.CreateCategory = function (data){
        return $http.post('api/categories/', data);
    };
    this.DeleteCategory = function (id){
        return $http.delete('api/categories/'+id);
    };
});
app.service('Users',function ($http){
    this.GetUsers = function(){
        return $http.get('api/users');
     };
    this.GetUserById = function(id){
        return $http.get('api/users/'+id);
    };
    this.UpdateUser = function(data){
       return $http.put('api/users/'+data.id, data);
    };
    this.CreateUser = function (data){
        return $http.post('api/users/', data);
    };
    this.DeleteUser = function (id){
        return $http.delete('api/users/'+id);
    };
});
app.service('Orders',function ($http){
    this.GetOrders = function(){
        return $http.get('api/orders');
     };
    this.GetUserById = function(id){
        return $http.get('api/users/'+id);
    };
    this.UpdateStatus = function(data){
       return $http.put('api/orders/'+data.id, data.made);
    };
    this.CreateUser = function (data){
        return $http.post('api/users/', data);
    };
    this.DeleteOrder = function (id){
        return $http.delete('api/orders/'+id);
    };
});
app.service('Feedback',function ($http){
    this.GetFeedback = function(){
        return $http.get('api/feedback');
     };
    this.GetUserById = function(id){
        return $http.get('api/users/'+id);
    };
    this.UpdateStatus = function(data){
       return $http.put('api/orders/'+data.id, data.made);
    };
    this.CreateUser = function (data){
        return $http.post('api/users/', data);
    };
    this.DeleteFeedback = function (id){
        return $http.delete('api/feedback/'+id);
    };
});

