using LIVAVIEW from '../db/data-model';

service Main {
   @readonly
   entity LivaEntity as
      projection on LIVAVIEW {
         *,
         TO_NCLOB(SHAPE_6207) as SHAPE_6207 : LargeString
      }
      excluding {
         SHAPE_6207
      };

}
