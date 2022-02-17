package main
/*
import (
  "net/http"
  "github.com/gin-gonic/gin"
)

func main() {
  router := gin.Default() //new gin router initialization
  router.GET("/", func(context *gin.Context) {
    context.JSON(http.StatusOK, gin.H{"data": "Hello World !"})
  }) // first endpoint returns Hello World
  router.Run(":8000") //running application, Default port is 8080
}
*/

//package main

import (
    "github.com/famousyub/securesocial/api/controller"
    "github.com/famousyub/securesocial/api/repository"
    "github.com/famousyub/securesocial/api/routes"
    "github.com/famousyub/securesocial/api/service"
    "github.com/famousyub/securesocial/infrastructure"
    "github.com/famousyub/securesocial/models"
)

func init() {
    infrastructure.LoadEnv()
}

func main() {

    router := infrastructure.NewGinRouter() //router has been initialized and configured
    db := infrastructure.NewDatabase() // databse has been initialized and configured
    postRepository := repository.NewPostRepository(db) // repository are being setup
    postService := service.NewPostService(postRepository) // service are being setup
    postController := controller.NewPostController(postService) // controller are being set up
    postRoute := routes.NewPostRoute(postController, router) // post routes are initialized
    postRoute.Setup() // post routes are being setup
    userRepository := repository.NewUserRepository(db)
    userService := service.NewUserService(userRepository)
    userController := controller.NewUserController(userService)
    userRoute := routes.NewUserRoute(userController, router)
    userRoute.Setup()

    db.DB.AutoMigrate(&models.Post{}, &models.User{})
    db.DB.AutoMigrate(&models.Post{}) // migrating Post model to datbase table
    router.Gin.Run(":8000") //server started on 8000 port
}
