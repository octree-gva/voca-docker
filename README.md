<img src="https://github.com/octree-gva/meta/blob/main/voca/logo.png?raw=true" width="148" />

# Voca-Docker
This repository have scripts used in gitlab pipeline in order to : 

- Fetch last versions of decidim, compatible node version and compatible ruby version
- On top of that, it build a dev image (with all the gems needed for assets compilation)
- On top of that, it build a production image, with the minimal deps possible. 

For more information, see our [].gitlab-ci file](.gitlab-ci.yml)


# Voca
Create&Manage Decidim instances on-the-fly, deploy all its ecosystem. 
Voca focuses on Decidim, released on [APGL-3 open-source license](LICENSE.md) and all the ecosystem around the platform. As *Decidim is not a tool, but a framework for digital democratic participation, many tools gravitates around Decidim.* 

*Our ambition is to create with Voca **an open-source SaaS service from Decidim & its ecosystem.***

## Repositories

| repo        | info                                                                          | stable version |
|-------------|-------------------------------------------------------------------------------|----------------|
| [voca-system](https://github.com/octree-gva/voca-system) | Install and manage decidim instances through a Dashboard                      | v0.1.0         |
| [voca-tasks](https://github.com/octree-gva/voca-tasks)  | Gem embedded in our Decidim image.  Manipulate and manage decidim instances.  | v0.1.0         |
| [voca-jps](https://github.com/octree-gva/voca-jps)    | Jelastic Manifest to deploy Decidim images                                    | v0.1.0         |
| [voca-docker](https://github.com/octree-gva/voca-docker) | Build Decidim docker images for Voca                                          | v0.1.0         |

# Contributing
We are not open to contribution for now. But we are [working on it](CONTRIBUTING.md). 

## License
See [LICENSE.md](LICENSE.md) file
