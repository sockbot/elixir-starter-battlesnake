# Battlesnake Elixir Starter Project

A Battlesnake template written in Elixir. Get started at [play.battlesnake.com](https://play.battlesnake.com).

This project is a great starting point for anyone wanting to program their first Battlesnake in Elixir. It can be run locally or easily deployed to a cloud provider of your choosing. See the [Battlesnake API Docs](https://docs.battlesnake.com/api) for more detail.

## Technologies Used

This project uses [Elixir](https://elixir-lang.org/) and [Cowboy](https://hexdocs.pm/plug_cowboy/Plug.Cowboy.html). It also comes with an optional [Heroku Buildpack](https://elements.heroku.com/buildpacks/hashnuke/heroku-buildpack-elixir) to help with deployment.

## Run Your Battlesnake

Install dependencies using mix:

```
mix deps.get
```

Run tests:

```
mix test
```

Start your Battlesnake:

```
mix run --no-halt
```

You should see something similar to the following output once it is running

```
23:43:51.154 [info] Starting snake...
```

Open [localhost:8080](http://localhost:8080) in your browser and you should see

```json
{
  "apiversion": "1",
  "author": "MyUsername",
  "color": "#888888",
  "head": "default",
  "tail": "default",
  "version": "0.0.1-beta"
}
```

## Play a Game Locally

Install the [Battlesnake CLI](https://github.com/BattlesnakeOfficial/rules/tree/main/cli)

- You can [download compiled binaries here](https://github.com/BattlesnakeOfficial/rules/releases)
- or [install as a go package](https://github.com/BattlesnakeOfficial/rules/tree/main/cli#installation) (requires Go 1.18 or higher)

Command to run a local game

```
battlesnake play -W 11 -H 11 --name 'Elixir Starter Snake' --url http://localhost:8080 -g solo --browser
```

## Next Steps

Continue with the [Battlesnake Quickstart Guide](https://docs.battlesnake.com/quickstart) to customize and improve your Battlesnake's behavior.

**Note:** To play games on [play.battlesnake.com](https://play.battlesnake.com) you'll need to deploy your Battlesnake to a live web server OR use a port forwarding tool like [ngrok](https://ngrok.com/) to access your server locally.

## Deploy to Fly.io

The project contains a Heroku buildpack config `elixir_buildpack.config` that is used to deploy to Fly.io. It is not tested on Heroku, but feel free to let me know if it works!

Download the Fly CLI tool (on Mac:)

```
brew install flyctl
```

Create an account on [fly.io](https://fly.io) or with this command:

```
fly auth signup
```

Log in to Fly on the CLI:

```
fly auth login
```

Build the app on Fly (it will read the configuration from `elixir_buildpack.config`).

```
fly launch
```

Deploy your snake to Fly:

```
fly deploy
```

Visit your snake in your browser:

```
fly open
```

That's it! You're ready to battle.
