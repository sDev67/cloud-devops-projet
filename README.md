# Projet terraform IW3 de Deveci Serkan & Kanoute Hamidou - Groupe 14
Le sujet comporte deux versions. 
- La version AWS dans le dossier `projet-version-aws`
- La version azure dans le dossier `projet-version-azure`

## Sujet

* Créer une VM sur un cloud public
* Installer docker et autres outils (voir vos besoins)
* Installer git
* Clone un repo
* Lancer l’application
* Ouvrir les ports de le Vm pour avoir accès à l’app en dehors de la VM 
* Ecrire une documentation sur les variables a set dans Terraform

## Version AWS

### Entrer dans le dossier `projet-version-aws`

```bash
cd projet-version-aws
```


## Variables à définir

Avant de commencer, assurez-vous de définir les variables appropriées dans le fichier terraform.tfvars. Ce fichier contient les valeurs spécifiques à votre environnement et doit être créé à partir du modèle terraform.tfvars.example.

Assurez-vous de définir les variables suivantes :

- `default_user`: Il s'agit du nom d'utilisateur par défaut pour accéder aux ressources créées par Terraform.
- `access_key`: Il s'agit de la clé d'accès pour authentifier l'accès aux ressources.
- `secret_key`: Il s'agit de la clé secrète associée à la clé d'accès pour authentifier l'accès aux ressources.
- `key_name` : Il s'agit du nom de la pair de clés qui sera généré, vous pouvez mettre la valeur que vous souhaitez.
- `region` : Il s'agit de la région ou l'EC2 sera déployé.
- `security_group_name` : Il s'agit du nom du groupe name qui sera créer, vous pouvez mettre la valeur que vou souhaitez.
- `ami`: il s'agit du code ami de l'ec2 à créer.
- `insance_type` : il s'afit du type d'instance à créer.

Voici des valeurs par défaut que vous pouvez utiliser pour allez plus vite :

```
default_user        = "ubuntu"
access_key          = ""
secret_key          = ""
key_name            = "aws-key-pair"
region              = "eu-west-3"
security_group_name = "security_group_vm"
ami                 = "ami-00ac45f3035ff009e"
instance_type       = "t2.micro"
```

Assurez-vous de remplir ces variables avec les valeurs appropriées pour votre environnement.

## Commandes à exécuter

Pour exécuter le projet, suivez les étapes ci-dessous :

1. Initialisez Terraform en exécutant la commande suivante :

   ```
   terraform init
   ```

2. Vérifiez la configuration en exécutant la commande suivante :

   ```
   terraform plan
   ```

   Assurez-vous de vérifier les modifications proposées avant de continuer.

3. Appliquez les modifications en exécutant la commande suivante :

   ```
   terraform apply
   ```

   Confirmez l'application des modifications lorsque vous y êtes invité.

4. Pour détruire les ressources créées, exécutez la commande suivante :

   ```
   terraform destroy
   ```

   Confirmez la destruction des ressources lorsque vous y êtes invité.


## Version azure

### Entrer dans le dossier `projet-version-azure`

```bash
cd projet-version-azure
```

### Initialiser le projet terraform

```bash
terraform init
```

### Créer un plan d'exécution

```bash
terraform plan
```

A cette étape, il vous sera demandé de renseigner une valeur pour la clé publique ssh. Le terminal doit ressembler à ceci. Entrer la valeur de votre choix

```bash

var.ssh_public_key
  SSH public key for the VM

  Enter a value: 

```

### Appliquer le plan

```bash
terraform apply
```

A cette étape, il vous sera demandé de renseigner une valeur pour la clé publique ssh comme pour le plan. 
    
```bash 
var.ssh_public_key
  SSH public key for the VM

  Enter a value: 

```

puis faites yes pour confirmer l'exécution


### La fin de l'exécution doit ressembler à ceci et vous devez récupérer l'adresse IP publique de la VM
```
Outputs:

public_ip_address = "51.137.70.36"
```
### Partie Test

- Pour tester l'application, on peut visiter le site sur un navigateur grâce à l'ip publique récupérée précédemment ou en utilisant curl

```bash
curl <PUBLIC-IP>
```

### Suppression de la VM

```bash
terraform destroy
```

A cette étape, il vous sera demandé de renseigner une valeur pour la clé publique ssh comme pour le plan. 
    
```bash 
var.ssh_public_key
  SSH public key for the VM

  Enter a value: 

```
