# puppet-module-skeleton

A skeleton project to set up a puppet module with a testing environment


## Testing

To run all tests execute

```
$ rake spec
```

This initializes the `spec/fixtures/modules` folder, clones all repositories given in the `.fixtures.yml` file, runs all the tests and if successful cleans the modules folder afterwards.

To not clone all puppet modules every time `rake spec` is executed first initialize and clone all puppet modules by

```
$ rake spec_prep
```

This creates and fills the fixtures folder with the modules given in the `.fixtures.yml`. To run all tests without cleaning afterwards run

```
$ rake spec_standalone
```
