# puppet-module-skeleton

A skeleton project to set up a puppet module with a testing environment


## RSpec Tests

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


## Acceptance tests

The project also supports acceptance tests with [beaker](https://github.com/puppetlabs/beaker). It offers support to test the Puppet code between multiple (virtual) machines. A list of nodes can be configured in the folder `spec/acceptance/nodesets`, while test files are located under `spec/acceptance`. Similar to rspec-puppet, the server infrastructure can be tested with [serverspec](http://serverspec.org/).

To run all acceptance tests on the set of nodes:

```
$ rake beaker
```

To list all available nodes the acceptance tests can be run on, execute:

```
$ rake beaker:sets
```

When debugging an issue with the Puppet code it sometimes is convenient to keep the virtual machine running for further inspection. To run all tests for a specific node and keep the machine available after running the tests:

```
$ BEAKER_set=default BEAKER_destroy=no rspec spec/acceptance
```

sets the node to `default`. The given example node configured in `spec/acceptance/nodeset/default.yml` is using [vagrant](https://www.vagrantup.com/) as hypervisor. To connect into the machine run:

```
$ rake beaker:ssh:default
```
