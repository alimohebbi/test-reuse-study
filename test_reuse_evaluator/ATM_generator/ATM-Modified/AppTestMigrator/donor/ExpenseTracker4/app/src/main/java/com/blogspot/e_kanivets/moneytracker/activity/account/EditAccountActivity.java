package com.blogspot.e_kanivets.moneytracker.activity.account;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.support.design.widget.TextInputLayout;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.EditText;

import com.blogspot.e_kanivets.moneytracker.R;
import com.blogspot.e_kanivets.moneytracker.activity.base.BaseBackActivity;
import com.blogspot.e_kanivets.moneytracker.controller.data.AccountController;
import com.blogspot.e_kanivets.moneytracker.entity.data.Account;

import javax.inject.Inject;

import butterknife.BindView;
import butterknife.OnClick;

public class EditAccountActivity extends BaseBackActivity {

    public static final String KEY_ACCOUNT = "key_account";

    @Inject
    AccountController accountController;

    private Account account;

    @BindView(R.id.til_title)
    TextInputLayout tilTitle;
    @BindView(R.id.et_title)
    EditText etTitle;
    @BindView(R.id.et_goal)
    EditText etGoal;
    @BindView(R.id.view_color)
    View viewColor;

    @Override
    protected int getContentViewId() {
        return R.layout.activity_edit_account;
    }

    @Override
    protected boolean initData() {
        getAppComponent().inject(EditAccountActivity.this);
        account = getIntent().getParcelableExtra(KEY_ACCOUNT);
        return account != null && super.initData();
    }

    @Override
    protected void initViews() {
        super.initViews();

        etTitle.setText(account.getTitle());
        etGoal.setText(Double.toString(account.getGoal()));
        viewColor.setBackgroundColor(account.getColor());
    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        if (account.isArchived()) {
            getMenuInflater().inflate(R.menu.menu_archived_account, menu);
        } else {
            getMenuInflater().inflate(R.menu.menu_account, menu);
        }
        return true;
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        switch (item.getItemId()) {
            case R.id.action_archive:
                archive();
                return true;

            case R.id.action_restore:
                restore();
                return true;

            case R.id.action_delete:
                delete();
                return true;

            default:
                return super.onOptionsItemSelected(item);
        }
    }

    @OnClick(R.id.fabDone)
    void done() {
        String title = etTitle.getText().toString().trim();

        if (title.isEmpty()) {
            tilTitle.setError(getString(R.string.field_cant_be_empty));
        } else {
            Account newAccount = new Account(account.getId(), title, account.getCurSum(),
                    account.getCurrency(), account.getGoal(), account.isArchived(), account.getColor());
            boolean updated = accountController.update(newAccount) != null;
            if (updated) {
                setResult(RESULT_OK);
                finish();
            }
        }
    }

    private void archive() {
        if (account.equals(accountController.readDefaultAccount())) {
            showToast(R.string.cant_archive_default_account);
        } else {
            accountController.archive(account);
            setResult(RESULT_OK);
            finish();
        }
    }

    private void restore() {
        accountController.restore(account);
        setResult(RESULT_OK);
        finish();
    }

    private void delete() {
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setTitle(R.string.delete_account_title);
        builder.setMessage(R.string.delete_account_message);
        builder.setPositiveButton(android.R.string.ok, new DialogInterface.OnClickListener() {
            @Override
            public void onClick(DialogInterface dialog, int which) {
                accountController.delete(account);
                setResult(RESULT_OK);
                finish();
            }
        });
        builder.setNegativeButton(android.R.string.cancel, null);
        builder.show();
    }

}
