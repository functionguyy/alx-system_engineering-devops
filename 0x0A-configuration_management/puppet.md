# Notes

## Resources
Resources are the fundamental unit for modeling system configuration. Each
resource describes the desired state for some aspect of a system, like a
specific service or package.

A resource in any area of code can be referenced from any other area of code.

A *resource declaration* adds a resource to the catalog and tells Puppet to
manage that resource's state.

The following the syntax for a resource declaration:
```puppet
<TYPE> { '<TITLE>': <ATTRIBUTE> => <VALUE>, }
```
The resource is a title and a set of attributes. Each resource must be unique;
Puppet does not allow you to declare the same resource twice. Puppet uses the
resource `title` and `name` attribute to identify duplicate resources.

Every resource is associated with a *resource type*, which determines the kind
of config it manages. 

A resource's title is a string that uniquely identifies the resource to Puppet

Attributes describe the desired state of the resource. Each attribute that you
declare must have a value. Attributes accept certain data types, such as
strings, numbers, hashes, or arrays.



## Relationships and ordering

Resources are included and applied in the order they are defined in their
manifest, but only if the resources has no implicit relationship with another
resource, as this can affect the declared order.

To manage a group of resources in a specific order, explicitly declare such
relationships with relationship metaparameters, chaining arrows and the
`require` function.

To override Puppet's default manifest ordering, declare an explicit
relationship between resources. Relationships are not limited by
evaluation-order; you can declare a relationship with a resource before that
resource has been declared.

some resource types can refresh when one of their dependencies changes. The
built-in resource types that can refresh are:
- `service`
- `exec`
- `package`

To specify that a resource must refresh when a related resource changes, create
a notifying relationship with the `subscribe` or `notify` metaparameters or the
notification chaining arrow `~>`.

When a resource changes, it sends a refresh event to any resources that
subscribe to it. Those resources that are subscribed recieve the refresh event.

Certain resource types can have automatic relationships with other resources.
If any explicit relationship, such as those created by chaining arrows,
conflict with an automatic relationship, the explicit relationship take
precedence.

### Relationship metaparameters

You can use certain metaparameters to establish relationship by setting any of
them as an attribute in any resource.

Set the value of any relationship metaparameter to either a resource reference
or an array of references that point to one or more target resources.

The following is a list of relationship metaparameters:

- `before`: Applies a resource before the target resource
- `require`: Applies a resource after the target resource
- `notify`: Applies a resource before the target resource. The target resource
  refreshes if the notifying resource changes
- `subscribe`: Applies a resource after the target resource. The subscribing
  resource refreshes if the target resource changes

If two resources need to happen in order, you can either put a `before`
attribute in the prior one or a `require` attribute in the subsequent one;
either approach creates the same relationship. The same is true of `notify` and
`subscribe`.
