contract;

storage {
    counter: u64 = 0,
}

abi Counter {
    #[storage(read, write)]
    fn increment();

    #[storage(read)]
    fn counter() -> u64;

    #[storage(read,write)]
    fn decrement();
}

impl Counter for Contract {
    #[storage(read)]
    fn counter() -> u64 {
      return storage.counter;
    }
    #[storage(read, write)]
    fn increment() {
        storage.counter = storage.counter + 1;
    }
    #[storage(read, write)]
    fn decrement() {
        storage.counter = storage.counter - 1;
    }
}