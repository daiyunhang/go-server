package main

import (
	"time"

	"go-server/models"
	_ "go-server/routers"

	"go-server/utils"

	"github.com/astaxie/beego"
	cache "github.com/patrickmn/go-cache"
)

func main() {
	models.Init()

	utils.Che = cache.New(60*time.Minute, 120*time.Minute)

	beego.Run()
}
