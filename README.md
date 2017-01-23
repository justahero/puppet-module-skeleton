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

The project also supports acceptance tests with [beaker](https://github.com/puppetlabs/beaker). It offers support to test the Puppet code between multiple (virtual) machines. A list of nodes can be configured in the folder `spec/acceptance/nodesets`, while test files are located under `spec/acceptance`. Similar to rspec-puppet, the server infrastructure can be tested with [beaker-rspec](https://github.com/puppetlabs/beaker-rspec) and [serverspec](http://serverspec.org/).

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

The current setup of acceptance tests uses the [beaker-puppet_install_helper](https://github.com/puppetlabs/beaker-puppet_install_helper) gem, which simplifies the installation of Puppet into the test VM, while providing environment variables to set a specific Puppet version and type (foss or agent) to install.

To use an older Puppet version inside the VM run the acceptance tests as follows:

```
$ PUPPET_INSTALL_TYPE=foss PUPPET_INSTALL_VERSION=3.7.5 BEAKER_destroy=no rake acceptance
```

This will install version `3.7.5` of Puppet with the appropriate type. In more recent Puppet versions, the Puppet agent needs to be used. In doing so the version that is given via `PUPPET_INSTALL_VERSION` is different, see the [official version matrix](https://docs.puppet.com/puppet/latest/about_agent.html) for more details on how to use specific versions. For example to install Puppet `4.4.0` with the puppet-agent use:

```
$ PUPPET_INSTALL_TYPE=agent PUPPET_INSTALL_VERSION=1.4.0 rake acceptance
```

This makes it easier to execute test runs with different Puppet versions in an CI environment, e.g.TravisCI.
