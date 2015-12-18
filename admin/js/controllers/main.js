var app = angular.module('App',['ngRoute']);

app.config(function($routeProvider){
    $routeProvider.when('/products',
        {
            templateUrl:'/admin/templates/products/products.html',
            controller:'ProductsController'
        }).
        when('/products',
        {
            templateUrl:'/admin/templates/products/products.html',
            controller:'ProductsController'
        }).
        when('/products/edit/:id',
        {
            templateUrl:'/admin/templates/products/edit.html',
            controller:'EditProductController'
        }).
         when('/categories/edit/:id',
        {
            templateUrl:'/admin/templates/categories/edit.html',
            controller:'EditCategoriesController'
        }).
        when('/products/new',
        {
            templateUrl:'/admin/templates/products/new.html',
            controller:'ProductsController'
        }).
        when('/categories/new',
        {
            templateUrl:'/admin/templates/categories/new.html',
            controller:'CategoriesController'
        }).        
        when('/categories',
        {
            templateUrl:'/admin/templates/categories/categories.html',
            controller:'CategoriesController'
        }).
        when('/users',
        {
            templateUrl:'/admin/templates/users/users.html',
            controller:'UsersController'
        }).
        when('/users/edit/:id',
        {
            templateUrl:'/admin/templates/users/edit-user.html',
            controller:'EditUserController'
        }).
        when('/users/new',
        {
            templateUrl:'/admin/templates/users/new-user.html',
            controller:'UsersController'
        }).
        when('/orders',
        {
            templateUrl:'/admin/templates/orders/orders.html',
            controller:'OrdersController'
        }).
        when('/feedback',
        {
            templateUrl:'/admin/templates/feedback/feedback.html',
            controller:'FeedbackController'
        }).
        otherwise({redirectTo: '/'});
}).controller('MainController',function($window,$scope,AuthService){
    $scope.GoBack = function(){
        $window.history.back();
    };
    $scope.auth = {};
    AuthService.checkAuth().then(function(res){
        if(res.data){
            $scope.auth = res.data;
            $scope.auth.loggedIn = true;
        }
        //$scope.user.loggedIn = true;
    });
    
    $scope.login = function (u){
        AuthService.login(u).then(function(res){
            if(res.data.role === 'admin'){
                $scope.auth = res.data;
                $scope.auth.loggedIn = true;
            }
        });
        
    };
    
    $scope.ActiveView = 1;
    $scope.SwitchViewMode = function(id){
        $scope.ActiveView = id;
    };
    $scope.isViewActive = function(id){
        return $scope.ActiveView === id;
    };
}).controller('ProductsController',function($scope,Products){
    Products.GetProducts().then(function(res){
        $scope.products = res.data;
    });
    $scope.delete = function(id){
        Products.DeleteProduct(id).then(function(){
        $scope.GoBack();    
        });
        
        
    };
    $scope.CreateProduct = function(product){
        Products.CreateProduct(product).then(function(res){
            $scope.GoBack();
        });
    }
}).controller('EditProductController',function($scope,Products,$routeParams){
    var id = $routeParams['id'];
    Products.GetProductById(id).then(function(res){
        $scope.product = res.data;
    });
    $scope.UpdateProduct = function(product){
        Products.UpdateProduct(product).then(function(res){
            $scope.GoBack();
        });
    };
    
}).controller('CategoriesController',function($scope,Categories){
    Categories.GetCategories().then(function(res){
        $scope.categories = res.data;
    });
    $scope.CreateCategory = function(cat){
        Categories.CreateCategory(cat).then(function(res){
            $scope.GoBack();
        });
    };
     $scope.delete = function(id){
        Categories.DeleteCategory(id).then(function(res){
            $scope.GoBack();
        });
    };
}).controller('EditCategoriesController',function($scope,Categories,$routeParams){
    var id = $routeParams['id'];
    Categories.GetCategoryById(id).then(function(res){
        $scope.cat = res.data;
    });
    $scope.UpdateCategory = function(cat){
        Categories.UpdateCategory(cat).then(function(res){
            $scope.GoBack();
        });
    };
    
}).controller('UsersController',function($scope,Users){
    Users.GetUsers().then(function(res){
        $scope.users = res.data;
    });
    $scope.CreateUser = function(cat){
        Users.CreateUser(cat).then(function(res){
            $scope.GoBack();
        });
    };
     $scope.delete = function(id){
        Users.DeleteUser(id).then(function(res){
            $scope.GoBack();
        });
    };
}).controller('EditUserController',function($scope,Users,$routeParams){
    var id = $routeParams['id'];
    Users.GetUserById(id).then(function(res){
        $scope.user = res.data;
    });
    $scope.UpdateUser = function(user){
        Users.UpdateUser(user).then(function(res){
            $scope.GoBack();
        });
    };
    
}).controller('OrdersController',function($scope,Orders){
    Orders.GetOrders().then(function(res){
        $scope.orders = res.data;
    });
    
    $scope.UpdateStatus = function(data){
        Orders.UpdateStatus(data).then(function(res){
            
        });
    };
    $scope.delete = function(id){
        Orders.DeleteOrder(id).then(function(res){
            $scope.GoBack();
        });
    };
}).controller('FeedbackController',function($scope,Feedback){
    Feedback.GetFeedback().then(function(res){
        $scope.feedback = res.data;
    });
    
    $scope.UpdateStatus = function(data){
        Orders.UpdateStatus(data).then(function(res){
            
        });
    };
    $scope.delete = function(id){
        Feedback.DeleteFeedback(id).then(function(res){
            $scope.GoBack();
        });
    }
    });

