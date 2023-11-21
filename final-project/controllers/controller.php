<?php
require_once 'dao.php';

class Controller extends DAO
{
    private array $formColumns;
    private array $dropdowns;

    public function __construct($table, $selectQuery, $formColumns, $dropdowns)
    {
        parent::__construct($table, $selectQuery);
        $this->dropdowns = $dropdowns;
        $this->formColumns = $formColumns;

        if ($dropdowns) {
            foreach ($dropdowns as $key => $value) {
                $this->dropdowns[$key] = $this->pdo->query($value)->fetchAll(PDO::FETCH_ASSOC);
            }
        }
    }

    public function renderTable($actions = true)
    {
        ob_start();
        ?>
        <table class="table">
            <thead>
                <tr>
                    <?php
                    $row = $this->readAll()->fetch(PDO::FETCH_ASSOC);
                    unset($row['id']);
                    foreach ($row as $key => $value): ?>
                        <th>
                            <?= $key ?>
                        </th>
                    <?php endforeach; ?>
                    <?php if ($actions): ?>
                        <th>
                            Actions
                        </th>
                    <?php endif; ?>
                </tr>
            </thead>
            <tbody>
                <?php
                foreach ($this->readAll()->fetchAll(PDO::FETCH_ASSOC) as $row) {
                    echo $this->renderRow($row, $actions);
                }
                ?>
            </tbody>
        </table>
        <?php
        return ob_get_clean();
    }

    public function renderRow(array $row, bool $actions = true)
    {
        ob_start();
        ?>
        <tr>
            <?php foreach ($row as $key => $value): ?>
                <?php if ($key != 'id'): ?>
                    <td>
                        <?= $value ?>
                    </td>
                <?php endif; ?>
            <?php endforeach; ?>
            <?php if ($actions): ?>
                <td>
                    <?php $url_params = "module={$this->table}&id={$row['id']}" ?>
                    <a href="/modules/edit.php?<?= $url_params ?>" class="btn btn-secondary">Edit</a>
                    <a href="/modules/delete.php?<?= $url_params ?>" class="btn btn-danger delete-button">Delete</a>
                </td>
            <?php endif; ?>
        </tr>
        <?php
        return ob_get_clean();
    }

    public function renderCreateForm()
    {
        return $this->renderForm();
    }

    public function renderEditForm()
    {
        return $this->renderForm(true);
    }

    private function renderForm(bool $edit = false)
    {
        $url_params = "?module={$this->table}" . ($edit ? "&id={$_GET['id']}" : '');
        $action = '/modules/' . ($edit ? 'edit.php' : 'create.php') . $url_params;
        if ($edit) {
            $data = $this->readById($_GET['id'])->fetch(PDO::FETCH_ASSOC);
        }
        ob_start();
        ?>
        <form action="<?= $action ?>" method="POST" id=<?= $edit ? 'edit-form' : 'create-form' ?>>
            <?php foreach ($this->formColumns as $key => $value): ?>
                <?php if ($key != 'id'): ?>
                    <div class="mb-3">
                        <label for="<?= $key ?>" class="form-label">
                            <?= $value ?>
                        </label>
                        <?php if (array_key_exists($key, $this->dropdowns)): ?>
                            <select name="<?= $key ?>" class="form-control">
                                <?php foreach ($this->dropdowns[$key] as $option): ?>
                                    <option value="<?= $option['id'] ?>" <?= $edit && $data[$key] == $option['id'] ? 'selected' : '' ?>>
                                        <?= $option['name'] ?>
                                    </option>
                                <?php endforeach; ?>
                            </select>
                        <?php else: ?>
                            <input type="text" name="<?= $key ?>" class="form-control" value="<?= $edit ? $data[$key] : '' ?>">
                        <?php endif; ?>
                    </div>
                <?php endif; ?>
            <?php endforeach; ?>
            <input type="submit" value="<?= $edit ? 'Edit' : 'Add' ?>" class="btn btn-primary"
                id="<?= $edit ? 'edit-button' : 'create-button' ?>">
        </form>
        <?php
        return ob_get_clean();
    }
}
?>