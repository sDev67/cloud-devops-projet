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

## Prérequis
Assurez-vous d'avoir les outils suivants :
- Terraform
- Azure CLI

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
