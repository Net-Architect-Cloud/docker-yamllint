<div id="top"></div>

<!-- PROJECT SHIELDS -->
[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![GPL-3.0 License][license-shield]][license-url]

<!-- PROJECT LOGO -->
<br />
<div align="center">
  <h3 align="center">Docker YAMLlint</h3>

  <p align="center">
    A lightweight Docker image for YAML linting
    <br />
    <a href="https://github.com/Net-Architect-Cloud/docker-yamllint"><strong>Explore the docs »</strong></a>
    <br />
    <br />
    <a href="https://github.com/Net-Architect-Cloud/docker-yamllint/issues">Report Bug</a>
    ·
    <a href="https://github.com/Net-Architect-Cloud/docker-yamllint/issues">Request Feature</a>
  </p>
</div>

<!-- ABOUT THE PROJECT -->
## About The Project

A minimal Docker image based on Alpine Linux that provides the yamllint tool for linting YAML files. This container offers a lightweight solution for validating YAML syntax and formatting in CI/CD pipelines or local development environments.

### Key Features:
- Lightweight Alpine Linux base
- Latest version of yamllint
- Simple to use in continuous integration pipelines
- Based on official Python package

<p align="right">(<a href="#top">back to top</a>)</p>

<!-- GETTING STARTED -->
## Getting Started

To use this Docker image, you can pull it directly from GitHub Container Registry or build it locally.

### Using the Image

```bash
# Pull the image from GitHub Container Registry
docker pull ghcr.io/net-architect-cloud/docker-yamllint:latest

# Run yamllint on a specific file
docker run --rm -v $(pwd):/workdir ghcr.io/net-architect-cloud/docker-yamllint:latest yamllint /workdir/your-file.yaml

# Run with a custom configuration
docker run --rm -v $(pwd):/workdir -v $(pwd)/.yamllint:/etc/yamllint.yml ghcr.io/net-architect-cloud/docker-yamllint:latest yamllint -c /etc/yamllint.yml /workdir/
```

### Building the Image Locally

1. Clone the repository
   ```sh
   git clone https://github.com/Net-Architect-Cloud/docker-yamllint.git
   cd docker-yamllint
   ```
2. Build the Docker image
   ```sh
   docker build -t docker-yamllint .
   ```

<p align="right">(<a href="#top">back to top</a>)</p>

<!-- USAGE EXAMPLES -->
## Usage Examples

### Basic Usage
```bash
docker run --rm -v $(pwd):/data ghcr.io/net-architect-cloud/docker-yamllint:latest yamllint /data/your-file.yaml
```

### GitLab CI Integration
```yaml
lint-yaml:
  stage: lint
  image: ghcr.io/net-architect-cloud/docker-yamllint:latest
  script:
    - yamllint .
```

### GitHub Actions Integration
```yaml
name: YAML Lint
on: [push, pull_request]
jobs:
  lint:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - name: Lint YAML files
        uses: docker://ghcr.io/net-architect-cloud/docker-yamllint:latest
        with:
          args: yamllint .
```

<p align="right">(<a href="#top">back to top</a>)</p>

<!-- CONTRIBUTING -->
## Contributing

Contributions are what make the open source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

If you have a suggestion that would make this better, please fork the repo and create a pull request. You can also simply open an issue with the tag "enhancement".
Don't forget to give the project a star! Thanks again!

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

<p align="right">(<a href="#top">back to top</a>)</p>

<!-- LICENSE -->
## License

Distributed under the GPL-3.0 License. See `LICENSE` for more information.

<p align="right">(<a href="#top">back to top</a>)</p>

<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/Net-Architect-Cloud/docker-yamllint.svg?style=for-the-badge
[contributors-url]: https://github.com/Net-Architect-Cloud/docker-yamllint/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/Net-Architect-Cloud/docker-yamllint.svg?style=for-the-badge
[forks-url]: https://github.com/Net-Architect-Cloud/docker-yamllint/network/members
[stars-shield]: https://img.shields.io/github/stars/Net-Architect-Cloud/docker-yamllint.svg?style=for-the-badge
[stars-url]: https://github.com/Net-Architect-Cloud/docker-yamllint/stargazers
[issues-shield]: https://img.shields.io/github/issues/Net-Architect-Cloud/docker-yamllint.svg?style=for-the-badge
[issues-url]: https://github.com/Net-Architect-Cloud/docker-yamllint/issues
[license-shield]: https://img.shields.io/github/license/Net-Architect-Cloud/docker-yamllint.svg?style=for-the-badge
[license-url]: https://github.com/Net-Architect-Cloud/docker-yamllint/blob/main/LICENSE
