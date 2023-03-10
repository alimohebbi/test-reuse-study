package pl.com.andrzejgrzyb.shoppinglist.data;

import android.content.ContentResolver;
import android.content.ContentUris;
import android.net.Uri;
import android.provider.BaseColumns;
import android.text.format.Time;

/**
 * Created by Andrzej on 21.06.2016.
 */
public final class DbContract {
    // To prevent someone from accidentally instantiating the contract class,
    // give it an empty constructor.
    public DbContract() {
    }

    public static final String CONTENT_AUTHORITY = "pl.com.andrzejgrzyb.shoppinglist";

    public static final Uri BASE_CONTENT_URI = Uri.parse("content://" + CONTENT_AUTHORITY);

    public static final String PATH_ITEMS = "items";
    public static final String PATH_SHOPPING_LIST = "shoppingLists";
    public static final String PATH_USERS = "users";

    // To make it easy to query for the exact date, we normalize all dates that go into
    // the database to the start of the the Julian day at UTC.
//    public static long normalizeDate(long startDate) {
//        // normalize the start date to the beginning of the (UTC) day
//        Time time = new Time();
//        time.set(startDate);
//        int julianDay = Time.getJulianDay(startDate, time.gmtoff);
//        return time.setJulianDay(julianDay);
//    }

    /* Inner classes that define the table contents */
    /* Items in the shopping list, e.g. milk, cheese, ham, etc.  */
    public static final class ItemsEntry implements BaseColumns {
        public static final String TABLE_NAME = "items";
        public static final String COLUMN_ID_CLOUD = "idCloud";  // Items id in the Cloud
        public static final String COLUMN_NAME = "name";
        public static final String COLUMN_QUANTITY = "quantity";
        public static final String COLUMN_QUANTITY_UNIT = "quantityUnit";
        public static final String COLUMN_LIST_ID = "listId";
        public static final String COLUMN_LIST_ID_CLOUD = "listIdCloud";
        public static final String COLUMN_POSITION = "position";
        public static final String COLUMN_CHECKED = "checked";
        public static final String COLUMN_MODIFICATION_DATE = "modificationDate";
//        public static final String COLUMN_MODIFIED_BY_ID = "modifiedById"; // id of the user who did the last modification
        public static final String COLUMN_MODIFIED_BY_ID_CLOUD = "modifiedByIdCloud"; // id of the user who did the last modification


        public static final Uri CONTENT_URI = BASE_CONTENT_URI.buildUpon().appendPath(PATH_ITEMS).build();

//        public static final String CONTENT_TYPE =
//                ContentResolver.CURSOR_DIR_BASE_TYPE + "/" + CONTENT_AUTHORITY + "/" + PATH_ITEMS;
//        public static final String CONTENT_ITEM_TYPE =
//                ContentResolver.CURSOR_ITEM_BASE_TYPE + "/" + CONTENT_AUTHORITY + "/" + PATH_ITEMS;
//
//        public static final Uri buildItemUri(long id) {
//            return ContentUris.withAppendedId(CONTENT_URI, id);
//        }
    }

    /* Shopping Lists with owner, modifiers IDs, dates, etc. */
    public static final class ShoppingListsEntry implements BaseColumns {
        public static final String TABLE_NAME = "shoppingLists";
        public static final String COLUMN_ID_CLOUD = "idCloud";
        public static final String COLUMN_NAME = "name";
        public static final String COLUMN_DESCRIPTION = "description";
//        public static final String COLUMN_PERMITTED_USER_ID_CLOUD = "permittedUserIdCloud";
        public static final String COLUMN_OWNER_ID_CLOUD = "ownerIdCloud";
        public static final String COLUMN_MODIFICATION_DATE = "modificationDate";
//        public static final String COLUMN_MODIFIED_BY_ID = "modifiedById"; // id of the user who did the last modification
        public static final String COLUMN_MODIFIED_BY_ID_CLOUD = "modifiedByIdCloud"; // id of the user who did the last modification
        public static final String COLUMN_HASHTAG = "hashtag";

//        public static final Uri CONTENT_URI = BASE_CONTENT_URI.buildUpon().appendPath(PATH_SHOPPING_LIST).build();
//
//        public static final String CONTENT_TYPE =
//                ContentResolver.CURSOR_DIR_BASE_TYPE + "/" + CONTENT_AUTHORITY + "/" + PATH_SHOPPING_LIST;
//        public static final String CONTENT_ITEM_TYPE =
//                ContentResolver.CURSOR_ITEM_BASE_TYPE + "/" + CONTENT_AUTHORITY + "/" + PATH_SHOPPING_LIST;

//        public static final Uri buildShoppingListUri(long id) {
//            return ContentUris.withAppendedId(CONTENT_URI, id);
//        }
    }

    /* Users table. Contain only relevant user's data, e.g. people with whom the User share ShoppingLists with */
//    public static final class UsersEntry implements BaseColumns {
//        public static final String TABLE_NAME = "users";
//        public static final String COLUMN_ID_CLOUD = "idCloud";
//        public static final String COLUMN_EMAIL = "email";
//        public static final String COLUMN_NAME = "name";
//        public static final String COLUMN_IMAGE = "image";
//
//        public static final Uri CONTENT_URI = BASE_CONTENT_URI.buildUpon().appendPath(PATH_USERS).build();
//
//        public static final String CONTENT_TYPE =
//                ContentResolver.CURSOR_DIR_BASE_TYPE + "/" + CONTENT_AUTHORITY + "/" + PATH_USERS;
//        public static final String CONTENT_ITEM_TYPE =
//                ContentResolver.CURSOR_ITEM_BASE_TYPE + "/" + CONTENT_AUTHORITY + "/" + PATH_USERS;
//
//        public static final Uri buildShoppingListUri(long id) {
//            return ContentUris.withAppendedId(CONTENT_URI, id);
//        }
//    }
//    /* Table which bind Items to its Shopping List */
//    public static final class BindListEntry implements BaseColumns {
//        public static final String TABLE_NAME = "bindList";
//        public static final String COLUMN_ITEM_ID = "itemId";
//        public static final String COLUMN_LIST_ID = "listId";
//    }



}

