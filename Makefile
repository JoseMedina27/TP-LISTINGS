
# Variables

LISTING_A_RAIZ=../../..


# Funciones
cleanCapitulo = rm -rf bin/capitulo_$(1)


# Hacer Todos los Listings

all:
	make listing-1.1 && \
	
	make listing-2.1 && \
	make listing-2.2 && \
	make listing-2.3 && \
	make listing-2.4 && \
	make listing-2.5 && \
	make listing-2.6 && \
	make listing-2.7 && \
	make listing-2.9 && \
	
	make listing-3.1 && \
	make listing-3.2 && \
	make listing-3.3 && \
	make listing-3.4 && \
	make listing-3.5 && \
	make listing-3.6 && \
	make listing-3.7 && \
	
	make listing-4.1 && \
	make listing-4.2 && \
	make listing-4.3 && \
	make listing-4.4 && \
	make listing-4.5 && \
	make listing-4.6 && \
	make listing-4.7 && \
	make listing-4.8 && \
	make listing-4.9 && \
	make listing-4.10 && \
	make listing-4.11 && \
	make listing-4.12 && \
	make listing-4.13 && \
	make listing-4.14 && \
	make listing-4.15 && \
	
	make listing-5.1 && \
	make listing-5.2 && \
	make listing-5.3 && \
	make listing-5.4 && \
	make listing-5.5 && \
	make listing-5.6 && \
	make listing-5.7 && \
	make listing-5.8 && \
	make listing-5.9 && \
	make listing-5.10 && \
	make listing-5.11 && \
	make listing-5.12




# Make Clean, funcion para eliminar

clean:
	$(call cleanCapitulo,1) && \
	$(call cleanCapitulo,2) && \
	$(call cleanCapitulo,3) && \
	$(call cleanCapitulo,4) && \
	$(call cleanCapitulo,5)




# Listings

# Capitulo 1

listing-1.1:
	rm -rf bin/capitulo_1/reciprocal && \
	mkdir -p bin/capitulo_1; \
	cd src/capitulo_1; \
	gcc $(CFLAGS) -c main.c; \
	g++ $(CFLAGS) -c reciprocal.cpp; \
	g++ -o reciprocal main.o reciprocal.o; \
	mv reciprocal ../../bin/capitulo_1/

listing-1.2:
	@echo "Se uso listing-1.1 porque tienen que estar unidos"

listing-1.3:
	@echo "Se uso el listing-1.1 porque tienen que estar juntos"




# Capitulo 2

listing-2.1:
	rm -rf bin/capitulo_2/arglist.o && \
	mkdir -p bin/capitulo_2; \
	cd src/capitulo_2/2.1; \
	gcc $(CFLAGS) -c arglist.c; \
	mv arglist.o ../../../bin/capitulo_2/

listing-2.2:
	rm -rf bin/capitulo_2/getopt_long.o && \
	mkdir -p bin/capitulo_2; \
	cd src/capitulo_2/2.2; \
	gcc $(CFLAGS) -o getopt_long.o getopt_long.c; \
	mv getopt_long.o ../../../bin/capitulo_2/

listing-2.3:
	rm -rf bin/capitulo_2/print-env.o && \
	mkdir -p bin/capitulo_2; \
	cd src/capitulo_2/2.3; \
	gcc -o print-env.o print-env.c; \
	mv print-env.o ../../../bin/capitulo_2/	

listing-2.4:
	rm -rf bin/capitulo_2/client.o && \
	mkdir -p bin/capitulo_2; \
	cd src/capitulo_2/2.4; \
	gcc -o client.o client.c; \
	mv client.o ../../../bin/capitulo_2/	

listing-2.5:
	rm -rf bin/capitulo_2/temp_file.o && \
	mkdir -p bin/capitulo_2 && \
	cd src/capitulo_2/2.5 && \
	gcc $(CFLAGS) -o temp_file.o temp_file.c && \
	mv temp_file.o $(LISTING_A_RAIZ)/bin/capitulo_2

listing-2.6:
	rm -rf bin/capitulo_2/readfile.o && \
	mkdir -p bin/capitulo_2; \
	cd src/capitulo_2/2.6; \
	gcc -o readfile.o readfile.c; \
	mv readfile.o ../../../bin/capitulo_2/	


listing-2.7:
	rm -rf bin/capitulo_2/app; \
	mkdir -p bin/capitulo_2; \
	cd src/capitulo_2/2.7;\
	gcc -c test.c; \
	gcc -c app.c;\
	ar cr libtest.a test.o; \
	gcc -o app app.o -L. -ltest; \
	mv app ../../../bin/capitulo_2/	
	
listing-2.8:
	@echo "Se utilizo el listing-2.7 porque tienen que estar juntos"

listing-2.9:
	rm -rf bin/capitulo_2/tifftest.o && \
	mkdir -p bin/capitulo_2 && \
	cd src/capitulo_2/2.9 && \
	gcc $(CFLAGS) -o tifftest.o tifftest.c -ltiff && \
	mv tifftest.o $(LISTING_A_RAIZ)/bin/capitulo_2 && \


# Capitulo 3
listing-3.1: 
	rm -rf bin/capitulo_3/print-pid.o && \
	mkdir -p bin/capitulo_3 && \
	cd src/capitulo_3/3.1 && \
	gcc $(CFLAGS) -o print-pid.o print-pid.c && \
	mv print-pid.o $(LISTING_A_RAIZ)/bin/capitulo_3

listing-3.2: 
	rm -rf bin/capitulo_3/system.o && \
	mkdir -p bin/capitulo_3 && \
	cd src/capitulo_3/3.2 && \
	gcc $(CFLAGS) -o system.o system.c && \
	mv system.o $(LISTING_A_RAIZ)/bin/capitulo_3

listing-3.3: 
	rm -rf bin/capitulo_3/fork.o && \
	mkdir -p bin/capitulo_3 && \
	cd src/capitulo_3/3.3 && \
	gcc $(CFLAGS) -o fork.o fork.c && \
	mv fork.o $(LISTING_A_RAIZ)/bin/capitulo_3

listing-3.4: 
	rm -rf bin/capitulo_3/fork-exec.o && \
	mkdir -p bin/capitulo_3 && \
	cd src/capitulo_3/3.4 && \
	gcc $(CFLAGS) -o fork-exec.o fork-exec.c && \
	mv fork-exec.o $(LISTING_A_RAIZ)/bin/capitulo_3

listing-3.5:
	rm -rf bin/capitulo_3/sigusr1.o && \
	mkdir -p bin/capitulo_3 && \
	cd src/capitulo_3/3.5 && \
	gcc $(CFLAGS) -o sigusr1.o sigusr1.c && \
	mv sigusr1.o $(LISTING_A_RAIZ)/bin/capitulo_3

listing-3.6: 
	rm -rf bin/capitulo_3/zombie.o && \
	mkdir -p bin/capitulo_3 && \
	cd src/capitulo_3/3.6 && \
	gcc $(CFLAGS) -o zombie.o zombie.c && \
	mv zombie.o $(LISTING_A_RAIZ)/bin/capitulo_3

listing-3.7: 
	rm -rf bin/capitulo_3/sigchld.o && \
	mkdir -p bin/capitulo_3 && \
	cd src/capitulo_3/3.7 && \
	gcc $(CFLAGS) -o sigchld.o sigchld.c && \
	mv sigchld.o $(LISTING_A_RAIZ)/bin/capitulo_3



# Capitulo 4
listing-4.1:
	rm -rf bin/capitulo_4/thread-create.o && \
	mkdir -p bin/capitulo_4 && \
	cd src/capitulo_4/4.1 && \
	cc $(CFLAGS) -o thread-create.o thread-create.c -lpthread && \
	mv thread-create.o $(LISTING_A_RAIZ)/bin/capitulo_4

listing-4.2:
	rm -rf bin/capitulo_4/thread-create2.o && \
	mkdir -p bin/capitulo_4 && \
	cd src/capitulo_4/4.2 && \
	cc $(CFLAGS) -o thread-create2.o thread-create2.c -lpthread && \
	mv thread-create2.o $(LISTING_A_RAIZ)/bin/capitulo_4

listing-4.3:
	@echo "El programa completo esta en el listing-4.2 asumi que no era necesario colocarlo de vuelta"

listing-4.4:
	rm -rf bin/capitulo_4/primes.o && \
	mkdir -p bin/capitulo_4 && \
	cd src/capitulo_4/4.4 && \
	cc $(CFLAGS) -o primes.o primes.c -lpthread && \
	mv primes.o $(LISTING_A_RAIZ)/bin/capitulo_4

listing-4.5:
	rm -rf bin/capitulo_4/detached.o && \
	mkdir -p bin/capitulo_4 && \
	cd src/capitulo_4/4.5 && \
	cc $(CFLAGS) -o detached.o detached.c -lpthread && \
	mv detached.o $(LISTING_A_RAIZ)/bin/capitulo_4

listing-4.6:
	rm -rf bin/capitulo_4/critical-section.o && \
	mkdir -p bin/capitulo_4 && \
	cd src/capitulo_4/4.6 && \
	cc $(CFLAGS) -o critical-section.o critical-section.c -lpthread && \
	mv critical-section.o $(LISTING_A_RAIZ)/bin/capitulo_4

listing-4.7:
	rm -rf bin/capitulo_4/tsd.o && \
	mkdir -p bin/capitulo_4 && \
	cd src/capitulo_4/4.7 && \
	cc $(CFLAGS) -o tsd.o tsd.c -lpthread -lm && \
	mv tsd.o $(LISTING_A_RAIZ)/bin/capitulo_4

listing-4.8:
	rm -rf bin/capitulo_4/cleanup.o && \
	mkdir -p bin/capitulo_4 && \
	cd src/capitulo_4/4.8 && \
	cc $(CFLAGS) -o cleanup.o cleanup.c -lpthread && \
	mv cleanup.o $(LISTING_A_RAIZ)/bin/capitulo_4

listing-4.9:
	rm -rf bin/capitulo_4/cxx-exit.o && \
	mkdir -p bin/capitulo_4 && \
	cd src/capitulo_4/4.9 && \
	g++ $(CFLAGS) -o cxx-exit.o cxx-exit.cpp -lpthread && \
	mv cxx-exit.o $(LISTING_A_RAIZ)/bin/capitulo_4

listing-4.10:
	rm -rf bin/capitulo_4/job-queue1.o && \
	mkdir -p bin/capitulo_4 && \
	cd src/capitulo_4/4.10 && \
	cc $(CFLAGS) -o job-queue1.o job-queue1.c -lpthread && \
	mv job-queue1.o $(LISTING_A_RAIZ)/bin/capitulo_4

listing-4.11:
	rm -rf bin/capitulo_4/job-queue2.o && \
	mkdir -p bin/capitulo_4 && \
	cd src/capitulo_4/4.11 && \
	cc $(CFLAGS) -o job-queue2.o job-queue2.c -lpthread && \
	mv job-queue2.o $(LISTING_A_RAIZ)/bin/capitulo_4

listing-4.12:
	rm -rf bin/capitulo_4/job-queue3.o && \
	mkdir -p bin/capitulo_4 && \
	cd src/capitulo_4/4.12 && \
	cc $(CFLAGS) -o job-queue3.o job-queue3.c -lpthread && \
	mv job-queue3.o $(LISTING_A_RAIZ)/bin/capitulo_4

listing-4.13:
	rm -rf bin/capitulo_4/spin-condvar.o && \
	mkdir -p bin/capitulo_4 && \
	cd src/capitulo_4/4.13 && \
	cc $(CFLAGS) -o spin-condvar.o spin-condvar.c -lpthread && \
	mv spin-condvar.o $(LISTING_A_RAIZ)/bin/capitulo_4

listing-4.14:
	rm -rf bin/capitulo_4/condvar.o && \
	mkdir -p bin/capitulo_4 && \
	cd src/capitulo_4/4.14 && \
	cc $(CFLAGS) -o condvar.o condvar.c -lpthread && \
	mv condvar.o $(LISTING_A_RAIZ)/bin/capitulo_4

listing-4.15:
	rm -rf bin/capitulo_4/thread-pid.o && \
	mkdir -p bin/capitulo_4 && \
	cd src/capitulo_4/4.15 && \
	cc $(CFLAGS) -o thread-pid.o thread-pid.c -lpthread && \
	mv thread-pid.o $(LISTING_A_RAIZ)/bin/capitulo_4
	


#Capitulo 5
listing-5.1:
	rm -rf bin/capitulo_5/smh.o && \
	mkdir -p bin/capitulo_5 && \
	cd src/capitulo_5/5.1 && \
	cc $(CFLAGS) -o shm.o shm.c && \
	mv shm.o $(LISTING_A_RAIZ)/bin/capitulo_5
	
listing-5.2:
	rm -rf bin/capitulo_5/sem_all_deall.o && \
	mkdir -p bin/capitulo_5 && \
	cd src/capitulo_5/5.2 && \
	cc $(CFLAGS) -o sem_all_deall.o sem_all_deall.c && \
	mv sem_all_deall.o $(LISTING_A_RAIZ)/bin/capitulo_5
	
listing-5.3:
	rm -rf bin/capitulo_5/sem_init.o && \
	mkdir -p bin/capitulo_5 && \
	cd src/capitulo_5/5.3 && \
	cc $(CFLAGS) -o sem_init.o sem_init.c && \
	mv sem_init.o $(LISTING_A_RAIZ)/bin/capitulo_5
	
listing-5.4:
	rm -rf bin/capitulo_5/sem_pv.o && \
	mkdir -p bin/capitulo_5 && \
	cd src/capitulo_5/5.4 && \
	cc $(CFLAGS) -o sem_pv.o sem_pv.c && \
	mv sem_pv.o $(LISTING_A_RAIZ)/bin/capitulo_5

listing-5.5:
	rm -rf bin/capitulo_5/mmap-write.o && \
	mkdir -p bin/capitulo_5 && \
	cd src/capitulo_5/5.5 && \
	cc $(CFLAGS) -o mmap-write.o mmap-write.c && \
	mv mmap-write.o $(LISTING_A_RAIZ)/bin/capitulo_5
	
listing-5.6:
	rm -rf bin/capitulo_5/mmap-read.o && \
	mkdir -p bin/capitulo_5 && \
	cd src/capitulo_5/5.6 && \
	cc $(CFLAGS) -o mmap-read.o mmap-read.c && \
	mv mmap-read.o $(LISTING_A_RAIZ)/bin/capitulo_5
	
listing-5.7:
	rm -rf bin/capitulo_5/pipe.o && \
	mkdir -p bin/capitulo_5 && \
	cd src/capitulo_5/5.7 && \
	cc $(CFLAGS) -o pipe.o pipe.c && \
	mv pipe.o $(LISTING_A_RAIZ)/bin/capitulo_5
	
listing-5.8:
	rm -rf bin/capitulo_5/dup2.o && \
	mkdir -p bin/capitulo_5 && \
	cd src/capitulo_5/5.8 && \
	cc $(CFLAGS) -o dup2.o dup2.c && \
	mv dup2.o $(LISTING_A_RAIZ)/bin/capitulo_5
	
listing-5.9:
	rm -rf bin/capitulo_5/popen.o && \
	mkdir -p bin/capitulo_5 && \
	cd src/capitulo_5/5.9 && \
	cc $(CFLAGS) -o popen.o popen.c && \
	mv popen.o $(LISTING_A_RAIZ)/bin/capitulo_5
	
listing-5.10:
	rm -rf bin/capitulo_5/socket-server.o && \
	mkdir -p bin/capitulo_5 && \
	cd src/capitulo_5/5.10 && \
	cc $(CFLAGS) -o socket-server.o socket-server.c && \
	mv socket-server.o $(LISTING_A_RAIZ)/bin/capitulo_5
	
listing-5.11:
	rm -rf bin/capitulo_5/socket-cliente.o && \
	mkdir -p bin/capitulo_5 && \
	cd src/capitulo_5/5.11 && \
	cc $(CFLAGS) -o socket-cliente.o socket-cliente.c && \
	mv socket-cliente.o $(LISTING_A_RAIZ)/bin/capitulo_5
	
listing-5.12:
	rm -rf bin/capitulo_5/socket-inet.o && \
	mkdir -p bin/capitulo_5 && \
	cd src/capitulo_5/5.12 && \
	cc $(CFLAGS) -o socket-inet.o socket-inet.c && \
	mv socket-inet.o $(LISTING_A_RAIZ)/bin/capitulo_5