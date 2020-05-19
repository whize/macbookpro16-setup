package main

import (
	"fmt"
	"io/ioutil"
	"net/http"
	"time"
)

func main() {
	url := "http://whatismyip.akamai.com/"
	client := &http.Client{
		Timeout: time.Duration(2) * time.Second,
	}

	resp, err := client.Get(url)

	if err != nil {
		fmt.Println(err)
		return
	}

	defer resp.Body.Close()

	body, err := ioutil.ReadAll(resp.Body)

	if err != nil {
		fmt.Println(err)
		return
	}

	fmt.Printf("%s", body)
}
