// interface for CRUD operation
abstract class ICRUDRepository<T> {
  // get all data for model T
  Future<List<T>> getAll();
  // create/insert new data for model T
  Future<bool> create(T record);
  // update/edit existing data for model T
  Future<bool> update(T record);
  // delete/distory existing data for model T
  Future<bool> delete(T record);
  // get a record by identifier for example (by ID)
  Future<T> getRecordById(String id);
}
