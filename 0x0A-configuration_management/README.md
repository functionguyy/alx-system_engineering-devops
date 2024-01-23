# 0x0A. Configuration management


## Notes

Configuration management refers to the process of systematically handling
changes to a system in a way that it maintains integrity over time. The term is
broadly used to refer to **server configuration management** 

Automation plays an essential role in server configuration management. it's the
mechanism used to make the server reach a desirable state, previously defined
by provisioning scripts using a tool's specific language and features.
It common to refer to configuration management tools as *Automation Tools or IT
Automation Tools*

*Server Orchestration or IT Orchestration* is another common term used to
describe the automation features implemented by configuration management tools.


The purpose of configuration management tools is to make sure the system's
state matches the state described by your provisioning scripts.

Puppet, Ansible, Chef and Salt are popular choices of configuration management
tools

### Benefits of Configuration Management for Servers
- Quick provisioning of new servers
- Quick Recovery from Critical Events
- No More Snowflake Servers
- Version Control for the Server Environment
- Replicated Environments


### Overview of Configuration Management Tools

Most configuration management tools use a controller/master and node/agent
model. Essentially, the controller directs the configuration of the nodes,
based on a series of instructions or tasks defined in your provisioning
scripts.

The following are the most common features present in most configuration
management tools for servers:
- Automation Framework: Each CM tool provides a specific syntax and a set of
features that you can use to write provisioning scripts. Most tools will have
features that make their language similar to conventional programming
languages, but in a simplified way.
- Idempotent Behavior: CM tools keep track of the state of resources in order
  to avoid repeating tasks that were executed before. If a package was already
installed, the tool won't try to install it again. 
- System Facts: CM tools usually provide detailed information about system
  being provisioned. This data is available through global variables, known as
*facts*. They include things like network interfaces, IP addresses, operating
system, and distribution. 
- Templating system: Most CM tools provide a built-in templating system that
  can be used to facilitate setting up configuration files and services.
- Extensibility: Most CM tools will provide ways in which you can easily reuse
  and share smaller chunks of your provisioning setup as modules or plugins

### Choosing a Configuration Management Tool

The following are a few things you should take into consideration before making
a choice:
- Infastructure Complexity
- Learning Curve
- Cost
- Advanced Tooling
- Community and Support

### Conclusion

Configuration management can drastically improve the integrity of servers over
time by providing a framework for automating processes and keeping track of
changes made to the system environment.


### Resources
- [My notes on Puppet's DSL]()


