<!--
SPDX-FileCopyrightText: 2022 Wilfred Nicoll <xyzroller@rollyourown.xyz>
SPDX-License-Identifier: CC-BY-SA-4.0
-->

# Roll Your Own Control Node

This repository contains automation code to set up a [rollyourown.xyz](https://rollyourown.xyz) [control node](https://rollyourown.xyz/rollyourown/how_to_use/control_node/).

## Summary

This project uses [Ansible](https://www.ansible.com/) to deploy the software and configuration needed for a [rollyourown.xyz control node](https://rollyourown.xyz/rollyourown/how_to_use/control_node/).

## How to Use

A detailed description of how to use a rollyourown.xyz project to deploy and maintain an open source solution can be found [on the rollyourown.xyz website](https://rollyourown.xyz/rollyourown/how_to_use/).

To deploy a control node:

1. Install Ubuntu 20.04 LTS or 22.04 LTS on a computer or virtual machine

2. Log in as a non-root user, upgrade the system and then reboot to apply any system changes

        sudo apt update && sudo apt upgrade -y
        sudo reboot -n

3. Log back in as the non-root user and install `ansible`, `ansible-core`, `python3-packaging`, `python3-distutils`, `git` and `nano`:

        sudo apt install software-properties-common
        sudo apt-add-repository --yes --update ppa:ansible/ansible
        sudo apt install ansible ansible-core python3-packaging python3-distutils git nano -y

4. Log in as the non-root user, create and enter a working directory, and clone this repository from [Codeberg](https://codeberg.org) or [GitHub](https://github.com):

        git clone https://codeberg.org/rollyourown-xyz/ryo-control-node

    or

        git clone https://github.com/rollyourown-xyz/ryo-control-node

5. Enter the `ryo-control-node` directory, copy the file `configuration/configuration_TEMPLATE.yml` to a new file `configuration/configuration.yml`

        cd ryo-control-node
        cp configuration/configuration_TEMPLATE.yml configuration/configuration.yml

6. Edit the new file `configuration.yml` and add the non-root username and password. If you aren't already familiar with a different linux editor, use nano to edit the file:

        nano configuration/configuration.yml

7. Run the control node setup automation script `local-setup.sh` from the `ryo-control-node` directory to prepare the control node for deploying [rollyourown.xyz projects](https://rollyourown.xyz/rollyourown/projects/):

        ./local-setup.sh

8. After running the local-setup script, **reboot the control node**

Now proceed and deploy [rollyourown.xyz projects](https://rollyourown.xyz/rollyourown/projects/).

## How to Collaborate

We would be delighted if you would like to contribute to [rollyourown.xyz](https://rollyourown.xyz) and there are a number of ways you can collaborate on this project:

- [Raising security-related issues](https://rollyourown.xyz/collaborate/security_vulnerabilities/)
- [Contributing bug reports, feature requests and ideas](https://rollyourown.xyz/collaborate/bug_reports_feature_requests_ideas/)
- [Improving the project](https://rollyourown.xyz/collaborate/existing_projects_and_modules/) - e.g. to provide fixes or enhancements

You may also like to contribute to the wider [rollyourown.xyz](https://rollyourown.xyz/) project by, for example:

- [Contributing a new project or module](https://rollyourown.xyz/collaborate/new_projects_and_modules/)
- [Contributing to the rollyourown.xyz website content](https://rollyourown.xyz/collaborate/website_content/) or [design](https://rollyourown.xyz/collaborate/website_design/)
- [Maintaining a rollyourown.xyz repository](https://rollyourown.xyz/collaborate/working_with_git/what_is_git/#project-maintainer)

Issues for this project can be submitted on [Codeberg](https://codeberg.org/) (_preferred_) or [GitHub](https://github.com/):

- Issues on Codeberg: [here](https://codeberg.org/rollyourown-xyz/ryo-control-node>/issues)
- Issues on GitHub: [here](https://github.com/rollyourown-xyz/ryo-control-node/issues)

## Security Vulnerabilities

If you have found a security vulnerability in any [rollyourown.xyz](https://rollyourown.xyz/) service or any of the [rollyourown.xyz](https://rollyourown.xyz/) projects, modules or other repositories, please read our [security disclosure policy](https://rollyourown.xyz/collaborate/security_vulnerabilities/) and report this via our [security vulnerability report form](https://forms.rollyourown.xyz/security-vulnerability).

## Repository Links

For public contributions, we maintain mirror repositories of this project on [Codeberg](https://codeberg.org) and [GitHub](https://github.com):

- [https://codeberg.org/rollyourown-xyz/ryo-control-node](https://codeberg.org/rollyourown-xyz/ryo-control-node)
- [https://github.com/rollyourown-xyz/ryo-control-node](https://github.com/rollyourown-xyz/ryo-control-node)

Our preferred collaboration space is Codeberg:

<a href="https://codeberg.org/rollyourown-xyz/ryo-control-node"><img alt="Get it on Codeberg" src="https://get-it-on.codeberg.org/get-it-on-blue-on-white.png" height="60"></a>

The primary repository for this project is hosted on our own Git repository server at:

- [https://git.rollyourown.xyz/ryo-projects/ryo-control-node](https://git.rollyourown.xyz/ryo-projects/ryo-control-node)

**Repositories on our own Git server are accessible only to members of our organisation**.

## Copyright, Licences and Trademarks

For information on copyright, licences and trademarks, see [https://rollyourown.xyz/about/copyright_licenses_trademarks/](https://rollyourown.xyz/about/copyright_licenses_trademarks/).
