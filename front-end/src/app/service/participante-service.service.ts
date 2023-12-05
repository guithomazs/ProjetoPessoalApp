import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { environment } from 'src/environments/environment';

@Injectable({
  providedIn: 'root'
})
export class ParticipanteService {

  constructor(private http: HttpClient) { }

  apiUrl: string = environment.API_URL;

  getPagas(): Observable<any> {
    this.apiUrl += "/compra/pagas/7";
    console.log(this.apiUrl);
    return this.http.get(this.apiUrl);
  }

  getParticipadas(): Observable<any> {
    this.apiUrl += "/compraParticipante/participadas/5";
    console.log(this.apiUrl);
    return this.http.get(this.apiUrl);
  }

}
