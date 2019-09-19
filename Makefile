initialize_helm_client: get_credentials ## initialize tillerless support
	helm init --client-only

get_credentials: ## get credentials for kubernetes cluster
	gcloud container clusters get-credentials $(CLUSTER_NAME) --region=$(REGION) --project=$(PROJECT_ID)

deploy:
	kubectl apply -f hello-kubernetes.yaml
