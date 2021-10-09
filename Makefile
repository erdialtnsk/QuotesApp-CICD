run:
	kubectl apply -f .
	cd pvc/ && kubectl apply -f .

fill-db: run
	cd data-script/ && kubectl apply -f .

stop:
	kubectl delete -f . && cd data-script/ && kubectl delete -f .

clean: stop
	cd pvc/ && kubectl delete -f pvc.yaml
