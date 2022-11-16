# helm-charts
The DAAily and AD's Helm Charts repository.

## Directory Structure:
### archdaily
Contains `Ruby on Rails` current apps. From ArchDaily.
### daaily
Contains `FastAPI` current apps. From Daaily.

### To use them using Helm:
#### For Daaily/Archdaily:

```bash
helm repo add your_repository_name https://daaily.github.io/helm-charts/
```

#### Usage (Quick Helm Commands):

#### To update Chart Repo:

This command needs to be executed after you add a Helm Repo.

```bash
helm repo update
```

#### List Installed Repos:

```bash
helm repo list
```

#### To List the apps hosted on the Chart:

```bash
helm repo search your_repository_name
```

#### To Install a release from the Chart:

```bash
helm upgrade release_name ad-stable/chart-ad \
    --install \
    --wait \
    --timeout=300s \
    -f path/to/default_values.yaml \
    -f path/to/overrides_values.yaml \
    --set foo.bar=value
```

#### Custom Values

You can use custom values files as you want using `--values` or `-f` flag. To see custom values files exampes go to the `examples` directory inside this repository.