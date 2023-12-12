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
    let url = this.apiUrl + "/compra/pagas/1";
    return this.http.get(url);
  }

  getParticipadas(): Observable<any> {
    let url = this.apiUrl + "/compraParticipante/participadas/3";
    return this.http.get(url);
  }

}
