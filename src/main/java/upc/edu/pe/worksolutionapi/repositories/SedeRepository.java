package upc.edu.pe.worksolutionapi.repositories;

import upc.edu.pe.worksolutionapi.entities.Sede;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface SedeRepository extends JpaRepository<Sede, Long> {
}
