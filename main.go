package main

import (
	"time"

	"server/models"
	_ "server/routers"

	"server/utils"

	"github.com/astaxie/beego"
	cache "github.com/patrickmn/go-cache"
)

func main() {
	models.Init()

	utils.Che = cache.New(60*time.Minute, 120*time.Minute)

	beego.Run()
}
